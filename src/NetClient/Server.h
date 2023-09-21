

#pragma once

#include <memory>
#include <optional>
using namespace std;
#include "../NetDriver/NetDriver.h"
#include "../Queue/Queue.h"



class Server {
    
public:
    Server();
    explicit Server(NetDriver*, templates::Queue<Packet>*);
    Server(const Server&);    // copy constructor
    Server(Server&&);         // move constructor
    ~Server();
    
    
    bool connect(const char* ssid, const char* password);
    void close_client_connection();

    // Waits blocking for a new packet
    std::string get_packet();
    void new_packet_available(Packet packet);

    
    void set_netdriver(NetDriver* netDriver);

private:

    optional<unique_ptr<NetDriver>> netDriver;
    unique_ptr<templates::Queue<Packet>> packetQueue;
};
