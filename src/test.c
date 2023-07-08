/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include <stdio.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "scheduler/scheduler.h"
#include "event/event.h"

typedef enum {
    Low_Priority = 1, 
    Medium_Priority = 2, 
    High_Priority = 3
} Priority;


void task1(void* data);
void task2(void* data);
void task3(void* data);
void task4(u32 delay, char* name);
void eventListener(Event* event);
void eventBroadcaster(Event* event);
void blink(int rate);


int
main(int argc, char* argv[])
{
void* tmp;
const u32 task4Delay = 1000U;
const char* task4Name = "Mathias";

    stdio_init_all();

    cyw43_arch_init();

    printf("Starting scheduler...\n");

    Scheduler_Initialize(malloc, realloc, free);
    Event_Initialize(malloc, free);

    Event* evt = Event_Create("TestEvent");

/*
    if (Scheduler_CreateTask("Task 1", 4096, Low_Priority, task1, 1, NULL) != NULL) {
        printf("Task 1 created!\n");
    }
    if (Scheduler_CreateTask("Task 2", 4096, Medium_Priority, task2, 1, NULL) != NULL) {
        printf("Task 2 created!\n");
    }
    if (Scheduler_CreateTask("Task 3", 4096, High_Priority, task3, 1, NULL) != NULL) {
        printf("Task 3 created!\n");
    }
*/
    if (Scheduler_CreateTask("Task 4", 4096, High_Priority, task4, 2, &task4Delay, &task4Name) != NULL) {
        printf("Task 4 created!\n");
    }
    if (Scheduler_CreateTask("EventTask", 2048, High_Priority, eventListener, 1, &evt)) {
        printf("Event listener created!\n");
    }
    if (Scheduler_CreateTask("EventTask", 2048, High_Priority, eventBroadcaster, 1, &evt)) {
        printf("Event broadcaster created!\n");
    }
    

    Scheduler_Start();

    for (;;) {}

    return 0;
}


void
turn_on_led(void)
{
    cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 1);
}


void
turn_off_led(void)
{
    cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 0);
}


void
blink(int rate)
{
    for (int i = 0; i < 1; i++) {
        turn_on_led();
        sleep_us(rate);
        turn_off_led();
        sleep_us(rate);
    }
}


void
task1(void* data)
{

    for (;;) {
        printf("Hello world!\n");
        Scheduler_Sleep(500);       
    }
}


void 
task1xx(void* data)
{
    char* name = data;

    for (;;) {
        printf("My name is %s\n", name);
        Scheduler_Sleep(500);
    }
}


void
task2(void* data)
{
const char* dave = "Dave";
const char* frank = "Frank";
    for (;;) {
        turn_off_led();
        printf("Starting tasks...\n");
        TaskHandle t1 = Scheduler_CreateTask("task2 child", 4096, High_Priority, task1xx, 1, &dave);
        TaskHandle t2 = Scheduler_CreateTask("task2 child", 4096, High_Priority, task1xx, 1, &frank);
        //printf("Hello Task2\n");
        Scheduler_Sleep(2000);
        printf("Deleting tasks...\n");
        Scheduler_DeleteTask(t1);
        Scheduler_DeleteTask(t2);
        Scheduler_Sleep(10000);
    }
}


void
task3(void* data)
{

    for (;;) {
        turn_on_led();
        printf("Hello Task3\n");
        Scheduler_Sleep(3000);
    }
}


void task4(u32 delay, char* name)
{

    for (;;) {
        printf("Task4 name is %s\n", name);
        Scheduler_Sleep(delay);
    }
}


void eventListener(Event* event)
{
    u32 *ctx = NULL;

    for (;;) {
        if (Event_Wait(event, (void**)&ctx, 1000) == true) {
            printf("Event: %#x\n", *ctx);
        } else {
            printf("Timeout!\n");
        }
    }
}


void eventBroadcaster(Event* event)
{
    u32 val = 0xAA;

    for (;;) {
        Scheduler_Sleep(500);
        Event_Broadcast(event, &val);
        Scheduler_Sleep(1000);
    }
}

