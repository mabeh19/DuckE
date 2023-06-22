#include <stdio.h>
#include <stdlib.h>
#include "pico/stdlib.h"
//#include "pico/cyw43_arch.h"
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

int main()
{
void* tmp;
    stdio_init_all();

    //cyw43_arch_init();
    
    //sleep_ms(5000);

    //blink(10);
    //blink(200);


    printf("Starting scheduler...\n");


    Scheduler_Initialize(malloc, realloc, free);

    //blink(500);

    if (Scheduler_CreateTask("Task 1", 4096, Low_Priority, task1, NULL) != NULL) {
        printf("Task 1 created!\n");
    }
    if (Scheduler_CreateTask("Task 2", 4096, Medium_Priority, task2, NULL) != NULL) {
        printf("Task 2 created!\n");
    }
    if (Scheduler_CreateTask("Task 3", 4096, High_Priority, task3, NULL) != NULL) {
        printf("Task 3 created!\n");
    }

    Scheduler_Start();

    for (;;) {}

    return 0;
}

void turn_on_led(void)
{
    //cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 1);
}

void turn_off_led(void)
{
    //cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 0);
}

void blink(int rate)
{
    for (int i = 0; i < 1; i++) {
        turn_on_led();
        sleep_us(rate);
        turn_off_led();
        sleep_us(rate);
    }
}


void task1(void* data)
{
uint8_t lvl = 0;
    for (;;) {
        printf("Hello ");
        Scheduler_Sleep(1000);
        printf("world!\n");
        Scheduler_Sleep(1000);
    }
}


void task2(void* data)
{
    //sleep_ms(1000);
    //Scheduler_Sleep(1000);
    for (;;) {
        turn_off_led();
        printf("Hello Task2\n");
        Scheduler_Sleep(2000);
    }
}


void task3(void* data)
{

    for (;;) {
        turn_on_led();
        printf("Hello Task3\n");
        Scheduler_Sleep(2000);
    }
}

