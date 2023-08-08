

#include "lwip/tcp.h"

#include "Cyw43Client.h"



Cyw43Client::Cyw43Client(struct tcp_pcb* _pcb) : pcb{_pcb}, rxCtx{}, txCtx{}
{
    
}


Cyw43Client::~Cyw43Client()
{

}

struct tcp_pcb* Cyw43Client::get_tcp_pcb()
{
    return pcb;
}


void Cyw43Client::read(std::shared_ptr<uint8_t[]> buffer, std::uint32_t maxLen)
{
    rxCtx.buffer = buffer;
    rxCtx.bytesToTransfer = maxLen;
    rxCtx.bytesTransferred = 0U;
}


std::uint32_t Cyw43Client::write(std::shared_ptr<uint8_t[]> buffer, std::uint32_t size)
{
    tcp_write(pcb, buffer.get(), size, TCP_WRITE_FLAG_COPY);

    return size;
}


Cyw43Client::TransferContext& Cyw43Client::get_tx_context()
{
    return txCtx;
}


Cyw43Client::TransferContext& Cyw43Client::get_rx_context()
{
    return rxCtx;
}

