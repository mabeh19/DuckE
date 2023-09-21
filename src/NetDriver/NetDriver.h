

#pragma once

#include <cstdint>
#include <functional>

#include "../Event/Event.h"
#include "../NetClient/NetClient.h"

class NetDriver {
public:

    typedef std::function<void(const templates::Event<NetClient&>* event, void* ctx, NetClient&)> ConnectEventCallback;
    typedef std::function<void(const templates::Event<Packet>*, Packet)> RxDoneEventCallback;

    virtual bool connect(const char* ssid, const char* password, std::uint32_t timeout) = 0;
    virtual void disconnect_client(void) = 0;
    virtual void bind_to_client_connect_event(void* ctx, ConnectEventCallback) = 0;
    virtual void bind_to_client_rx_done_event(void* ctx, RxDoneEventCallback) = 0;
};
