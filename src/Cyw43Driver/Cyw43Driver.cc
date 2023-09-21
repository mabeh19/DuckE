#include <iostream>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "Cyw43Driver.h"

#include "lwip/netif.h"

#ifndef TCP_PORT
#define TCP_PORT 6969 // nice
#endif

#define POLL_TIME_S (100U)


static err_t tcp_server_accept(void *arg, struct tcp_pcb *client_pcb, err_t err);
static err_t tcp_server_close(void *arg);
static void tcp_server_err(void *arg, err_t err);
static err_t tcp_server_poll(void *arg, struct tcp_pcb *tpcb);
static err_t tcp_server_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
static err_t tcp_server_result(void *arg, int status);
static err_t tcp_server_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);


struct State {
    Cyw43Driver* driver;
    int clientNum;
};

Cyw43Driver::Cyw43Driver() : 
    serverPcb{nullptr},
    client{std::nullopt},
    connectEvent{"Connected Event"},
    rxDoneEvent{"RX Done Event"}
{
    int errorCode = 0;
    if ((errorCode = cyw43_arch_init_with_country(CYW43_COUNTRY_DENMARK)) != 0) {
        std::cout << "Failed to initialize cyw43 driver: " << errorCode << "\n";
        state = ConnectionState::disconnected;
    } else {
        cyw43_arch_enable_sta_mode();
        state = ConnectionState::connecting;
    }
}


Cyw43Driver::~Cyw43Driver()
{
    cyw43_arch_deinit();
}


Cyw43Driver::ConnectionState Cyw43Driver::get_connection_state()
{
    return state;
}


void Cyw43Driver::raise_rx_done_event()
{
    Packet packet;
    packet.data = client.value()->get_rx_context().buffer;
    packet.length = client.value()->get_rx_context().bytesTransferred;
    rxDoneEvent.broadcast(packet);
}


void Cyw43Driver::raise_tx_done_event()
{

}


Cyw43Client& Cyw43Driver::get_client()
{
    return *client.value();
}


void Cyw43Driver::set_client(struct tcp_pcb* cpcb)
{
    if (cpcb) {
        client = std::unique_ptr<Cyw43Client>(new Cyw43Client(cpcb));
    }
    else {
        client.reset();
    }
}


struct tcp_pcb* Cyw43Driver::get_server()
{
    return serverPcb;
}


void Cyw43Driver::set_server(struct tcp_pcb* spcb)
{
    serverPcb = spcb;
}


void Cyw43Driver::bind_to_client_connect_event(void* ctx, ConnectEventCallback callback)
{
    using namespace std::placeholders;
    auto listener = std::bind(callback,_1, ctx, _2);
    connectEvent.add_listener(listener);
}


void Cyw43Driver::bind_to_client_rx_done_event(void* ctx, RxDoneEventCallback callback)
{
    rxDoneEvent.add_listener(callback);
}


void Cyw43Driver::raise_connect_event()
{
    if (client.has_value()) {
        connectEvent.broadcast(*client.value());
    }
}


bool Cyw43Driver::connect(const char* ssid, const char* password, std::uint32_t timeout)
{
    if (state != ConnectionState::connecting) {
        return false;
    }

    int errorCode = 0;
    if ((errorCode = cyw43_arch_wifi_connect_timeout_ms(ssid, password, CYW43_AUTH_WPA2_AES_PSK, timeout)) != 0) {
        std::cout << "Error starting scan for WiFi connection: " << errorCode << std::endl;
        return false;
    }

    
    std::cout << "Connection started\n";
    std::cout << "Address: " << ip4addr_ntoa(netif_ip4_addr(netif_default)) << std::endl;


    auto pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
    if (!pcb) {
        std::cout << "Failed to create pcb" << std::endl;
        return false;
    }

    err_t err = tcp_bind(pcb, NULL, TCP_PORT);
    if (err) {
        std::cout << "Failed to bind to port %u" << TCP_PORT << std::endl;
        return false;
    }

    auto serverPcb = tcp_listen_with_backlog(pcb, 1);
    if (!serverPcb) {
        std::cout << "Failed to listen :(" << std::endl;
        if (pcb) {
            tcp_close(pcb);
        }
    }

    tcp_arg(serverPcb, this);
    tcp_accept(serverPcb, tcp_server_accept);

    this->serverPcb = serverPcb;
    state = ConnectionState::connected;

    return true;
}


void Cyw43Driver::disconnect_client()
{
    tcp_server_close(this);
}


static err_t tcp_server_close(void *arg)
{
err_t err;

    Cyw43Driver* driver = (Cyw43Driver*)arg;
    
    struct tcp_pcb* pcb = driver->get_client().get_tcp_pcb();

    if (!pcb) {
        return ERR_ABRT;
    }

    //delete[] driver->get_client().get_rx_context().buffer;

    tcp_arg(pcb, NULL);
    tcp_poll(pcb, NULL, 0);
    tcp_sent(pcb, NULL);
    tcp_recv(pcb, NULL);
    tcp_err(pcb, NULL);
    err = tcp_close(pcb);
    if (err != ERR_OK) {
        std::cout << "Failed to close pcb" << std::endl;
    }
    driver->set_client(nullptr);

    return err;
}


static err_t tcp_server_result(void *arg, int status) 
{
    return tcp_server_close(arg);
}


static err_t tcp_server_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{
    Cyw43Driver* driver = (Cyw43Driver*)arg;
    auto& txContext = driver->get_client().get_tx_context();


    txContext.bytesTransferred += len;

    if (txContext.bytesTransferred == txContext.bytesToTransfer) {

        driver->raise_tx_done_event();
    }

    return ERR_OK;
}


static err_t tcp_server_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    Cyw43Driver* driver = (Cyw43Driver*)arg;
    auto& rxContext = driver->get_client().get_rx_context();

    if (!p || !rxContext.buffer) {
        return tcp_server_result(arg, -1);
    }

    cyw43_arch_lwip_check();
    if (p->tot_len > 0) {
        //std::cout << "tcp_server_recv " << p->tot_len << "/" << rxContext.bytesTransferred << " err " << err << std::endl;

        if (rxContext.bytesTransferred == 0U) {
            memset(rxContext.buffer.get(), 0x00, rxContext.bytesToTransfer);
        }

        const u16_t bufferLeft = rxContext.bytesToTransfer - rxContext.bytesTransferred;
        const u16_t bytesRead = p->tot_len > bufferLeft ? bufferLeft : p->tot_len;
        rxContext.bytesTransferred += pbuf_copy_partial(p, rxContext.buffer.get() + rxContext.bytesTransferred, 
                                      bytesRead, 0);

        tcp_recved(tpcb, bytesRead);

        if (p->tot_len == bytesRead) {
            pbuf_free(p);
        }
    }


    if (rxContext.bytesTransferred < rxContext.bytesToTransfer) {

        driver->raise_rx_done_event();
        rxContext.bytesTransferred = 0;
    }

    return ERR_OK;
}


static err_t tcp_server_poll(void *arg, struct tcp_pcb *tpcb)
{
    return tcp_server_result(arg, -1);
}


static void tcp_server_err(void *arg, err_t err)
{
    if (err != ERR_ABRT) {
        std::cout << "tcp client error: " << err << std::endl;
        tcp_server_result(arg, err);
    }
}


static err_t tcp_server_accept(void *arg, struct tcp_pcb *client_pcb, err_t err)
{
    Cyw43Driver* driver = (Cyw43Driver*)arg;
    if (err != ERR_OK || client_pcb == NULL) {
        std::cout << "Failure in accept!" << std::endl;
        return ERR_VAL;
    }
    std::cout << "client connected!" << std::endl;

    driver->set_client(client_pcb);
    tcp_arg(client_pcb, driver);
    tcp_sent(client_pcb, tcp_server_sent);
    tcp_recv(client_pcb, tcp_server_recv);
    tcp_poll(client_pcb, tcp_server_poll, POLL_TIME_S * 2);
    tcp_err(client_pcb, tcp_server_err);

    driver->raise_connect_event();

    return ERR_OK;
}


