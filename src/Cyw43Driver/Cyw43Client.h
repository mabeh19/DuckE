
#pragma once


#include "lwip/tcp.h"

#include "NetClient/NetClient.h"

class Cyw43Client : public NetClient {
private:
    struct TransferContext {
        u32_t bytesToTransfer;
        u32_t bytesTransferred;
        std::shared_ptr<uint8_t[]> buffer;
    };
public:
    Cyw43Client(struct tcp_pcb* pcb);
    ~Cyw43Client();

    struct tcp_pcb* get_tcp_pcb();
    TransferContext& get_tx_context();
    TransferContext& get_rx_context();

    virtual void read(std::shared_ptr<uint8_t[]> buffer, std::uint32_t maxLen) override;
    virtual std::uint32_t write(std::shared_ptr<uint8_t[]> buffer, std::uint32_t size) override;

private:


    TransferContext rxCtx;
    TransferContext txCtx;

    struct tcp_pcb* pcb;
};
