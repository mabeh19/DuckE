#include <functional>
#include <cstddef>
#include <iostream>
#include "Server.h"

#define BUF_SIZE (2048U)

static void connect_event_handler(const templates::Event<NetClient&>* event, void* arg, NetClient& client);
static void rx_done_event_handler(const templates::Event<Packet>* event, Packet packet, Server* server);

Server::Server() : netDriver(nullopt), packetQueue{}
{

}


Server::Server(NetDriver* _nc) : netDriver(unique_ptr<NetDriver>(_nc)), packetQueue{}
{

}


Server::Server(const Server&)
{

}


Server::Server(Server&&)
{

}


Server::~Server()
{

}


void Server::set_netdriver(NetDriver* _netDriver)
{
    netDriver = unique_ptr<NetDriver>{_netDriver};
}


bool Server::connect(const char* ssid, const char* password)
{
    using namespace std::placeholders;
    if (netDriver.has_value()) {
        netDriver.value()->bind_to_client_connect_event(this, connect_event_handler);
        auto doneHandler = bind(rx_done_event_handler, _1, _2, this);
        netDriver.value()->bind_to_client_rx_done_event(this, doneHandler);
        netDriver.value()->connect(ssid, password, 10'000);

        return true;
    }
    
    return false;
}


void Server::close_client_connection()
{
    netDriver->get()->disconnect_client();
}


vector<uint8_t> Server::get_packet()
{
    while(packetQueue.empty()) {
        // Wait for a new packet to arrive
    }
    
    auto newPacket = packetQueue.front();
    packetQueue.pop();

    vector<uint8_t> packet;
    packet.assign(newPacket.data.get(), newPacket.data.get() + newPacket.length);

    return packet;
}


void Server::new_packet_available(Packet packet)
{
    packetQueue.push(packet);
}


static void connect_event_handler(const templates::Event<NetClient&>* event, void* arg, NetClient& client)
{
    shared_ptr<uint8_t[]> buff = shared_ptr<uint8_t[]>(new uint8_t[BUF_SIZE]{0});
    
    
    client.read(buff, BUF_SIZE);
}


static void rx_done_event_handler(const templates::Event<Packet>* event, Packet packet, Server* server)
{
    /*
    * New message received, handle that shit
    */
    server->new_packet_available(packet);
}

