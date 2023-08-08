

#pragma once

#include <memory>
#include <cstdint>

struct Packet {
    std::shared_ptr<uint8_t[]> data;
    size_t length;  
};

class NetClient {

public:
    NetClient();
    ~NetClient();

    virtual void read(std::shared_ptr<uint8_t[]> buffer, std::uint32_t maxLen) = 0;
    virtual std::uint32_t write(std::shared_ptr<uint8_t[]> buffer, std::uint32_t size) = 0;
};
