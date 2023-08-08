

#pragma once

#include <functional>
#include <optional>
#include <memory>
#include "lwip/tcp.h"
#include "../NetDriver/NetDriver.h"
#include "Cyw43Client.h"
#include "../Event/Event.h"

class Cyw43Driver : public NetDriver {

public:
    enum ConnectionState {
        disconnected,
        connecting,
        connected,
    };

    Cyw43Driver();
    ~Cyw43Driver();

    virtual void connect(const char* ssid, const char* password, std::uint32_t timeout = 0) override;
    virtual void disconnect_client() override;
    virtual void bind_to_client_connect_event(void* ctx, ConnectEventCallback) override;
    virtual void bind_to_client_rx_done_event(void* ctx, RxDoneEventCallback) override;


    void raise_rx_done_event();
    void raise_tx_done_event();
    void raise_connect_event();

    ConnectionState get_connection_state();
    Cyw43Client& get_client();
    void set_client(struct tcp_pcb*);
    struct tcp_pcb* get_server();
    void set_server(struct tcp_pcb*);

private:   
   
    ConnectionState state;

    struct tcp_pcb* serverPcb;
    std::optional<std::unique_ptr<Cyw43Client>> client;

    templates::Event<NetClient&> connectEvent;
    templates::Event<Packet> rxDoneEvent;
};

