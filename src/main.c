#include <stdio.h>
#include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "scheduler/scheduler.h"

typedef enum {
    Low_Priority = 1, 
    Medium_Priority = 2, 
    High_Priority = 3
} Priority;


void task1(void* data);
void task2(void* data);
void task3(void* data);
void blink(int rate);


int
main(int argc, char* argv[])
{
void* tmp;
    stdio_init_all();

    cyw43_arch_init();

    printf("Starting scheduler...\n");


    Scheduler_Initialize(malloc, realloc, free);

#if 0
    if (Scheduler_CreateTask("Task 1", 8192, Low_Priority, task1, NULL) != NULL) {
        printf("Task 1 created!\n");
    }
#endif
    if (Scheduler_CreateTask("Task 2", 8192, Medium_Priority, task2, NULL) != NULL) {
        printf("Task 2 created!\n");
    }
#if 0
    if (Scheduler_CreateTask("Task 3", 8192, High_Priority, task3, NULL) != NULL) {
        printf("Task 3 created!\n");
    }
#endif

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
        printf("Hello ");
        Scheduler_Sleep(500);
        printf("world!\n");
        Scheduler_DeleteTask(NULL);
    }
}


void
task1x(void* data)
{

    for (;;) {
        printf("Hey there!\n");
        Scheduler_DeleteTask(NULL);
    }
}


void
task2(void* data)
{
    //sleep_ms(1000);
    //Scheduler_Sleep(1000);
    for (;;) {
        turn_off_led();
        printf("Starting tasks...\n");
        TaskHandle t1 = Scheduler_CreateTask("task2 child", 4096, High_Priority, task1, NULL);
        TaskHandle t2 = Scheduler_CreateTask("task2 child", 4096, High_Priority, task1x, NULL);
        //printf("Hello Task2\n");
        Scheduler_Sleep(2000);
        #if 0
        printf("Deleting tasks...\n");
        Scheduler_DeleteTask(t1);
        Scheduler_DeleteTask(t2);
        Scheduler_Sleep(10000);
        #endif
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

