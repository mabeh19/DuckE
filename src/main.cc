#include <iostream>
#include <cstdint>
#include <memory>
#include <cstring>
#include "Cyw43Driver/Cyw43Driver.h"
#include "pico/stdlib.h"

#include "Diamant/scheduler/scheduler.h"
#include "Diamant/queue/queue.h"


#include "NetClient/Server.h"
#include "Commandline/Commandline.h"
#include "Queue/DiamantQueue.h"
#include "Queue/StdQueue.h"



#ifndef WIFI_NAME
#define WIFI_NAME "Stofa91078"
#endif

#ifndef WIFI_PASSWORD
#define WIFI_PASSWORD "ben68pixel40"
#endif


#define NUM_COMMANDS    (10U)


enum Task_Priority {
    Task_Priority_Low,
    Task_Priority_Normal,
    Task_Priority_High
};


DIAMANT_TASK(WifiTask,      16384U);
DIAMANT_TASK(CommandParser, 16384U);


void trim_command(std::string& command);

int main(void)
{
    stdio_init_all();

    Scheduler_Initialize();

    Queue cq;
    const char* cqBuff[NUM_COMMANDS];
    Queue_Create(&cq, cqBuff, NUM_COMMANDS, sizeof(const char*));

    /* Create tasks */
    DIAMANT_REGISTER_TASK(WifiTask,         Task_Priority_Normal,   &cq);
    DIAMANT_REGISTER_TASK(CommandParser,    Task_Priority_High,     &cq);


    /* Run scheduler */
    Scheduler_Start();

    return 0;
}



void WifiTask(void* ctx)
{
    auto commandQueue = (Queue*)ctx;
    //auto q = new StdQueue<Packet>();
    auto q = new DiamantQueue<Packet, 10, 0U>();
    Server server(new Cyw43Driver(), q);

    while (!server.connect(WIFI_NAME, WIFI_PASSWORD)) {
        std::cout << "Unable to connect to network\n";
        std::cout << "Waiting a minute before retrying..." << std::endl;
        Scheduler_Sleep(60 * 1000);
    } 

    std::cout << "Server started and running!\n";
    
    for (;;) {
        auto command = server.get_packet();

        trim_command(command);

        if (!command.size()) {
            continue;
        }

        char* cmd = new char[command.size()];
        strcpy(cmd, command.c_str());
        Queue_PushBack(commandQueue, &cmd, 10000U);

        if (command == "exit") {
            std::cout << "Closing connection to client" << std::endl;
            server.close_client_connection();        
        }
    }
}


void trim_command(std::string& command)
{
    while (command.back() == '\r' || command.back() == '\n') {
        command.pop_back();
    }
}


void CommandParser(void *ctx)
{
const uint32_t ONE_MINUTE = 60 * 1000;
    auto commandQueue = (Queue*)ctx;
    auto parser = CommandlineParser::CommandlineParser();

    for (;;) {
        char* command;
        if (Queue_PopFront(commandQueue, ONE_MINUTE, &command)) {
            std::cout << "Received command: " << command << std::endl;
            auto token = parser.parse(command);

            std::cout << token << std::endl;
        }
        delete[] command;
    }
}


extern "C" {

void* Diamant_Malloc(size_t size)
{
    return malloc(size);
}


void Diamant_Free(void* ptr)
{
    free(ptr);
}

}
