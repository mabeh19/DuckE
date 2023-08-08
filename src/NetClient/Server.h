

#pragma once

#include <memory>
#include <optional>
#include <queue>
using namespace std;
#include "../NetDriver/NetDriver.h"



class Server {
    
public:
    Server();
    explicit Server(NetDriver*);
    Server(const Server&);    // copy constructor
    Server(Server&&);         // move constructor
    ~Server();
    
    
    bool connect(const char* ssid, const char* password);
    void close_client_connection();

    // Waits blocking for a new packet
    std::vector<uint8_t> get_packet();
    void new_packet_available(Packet packet);

    
    void set_netdriver(NetDriver* netDriver);

private:

    optional<unique_ptr<NetDriver>> netDriver;
    queue<Packet> packetQueue;
};
