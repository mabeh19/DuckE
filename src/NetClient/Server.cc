#include <functional>
#include <cstddef>
#include <iostream>
#include "Server.h"

#define BUF_SIZE (256U)

static void connect_event_handler(const templates::Event<NetClient&>* event, void* arg, NetClient& client);
static void rx_done_event_handler(const templates::Event<Packet>* event, Packet packet, Server* server);

Server::Server() : 
    netDriver(nullopt), 
    packetQueue{}
{

}


Server::Server(NetDriver* _nc, templates::Queue<Packet>* _q) : 
    netDriver(unique_ptr<NetDriver>(_nc)), 
    packetQueue(unique_ptr<templates::Queue<Packet>>(_q))
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
        
        return netDriver.value()->connect(ssid, password, 30'000);
    }
    
    return false;
}


void Server::close_client_connection()
{
    netDriver->get()->disconnect_client();
}


std::string Server::get_packet()
{
    auto newPacket = packetQueue.get()->PopFront();

    std::string packet((char*)newPacket.data.get());

    return packet;
}


void Server::new_packet_available(Packet packet)
{
    packetQueue.get()->PushBack(&packet);
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

