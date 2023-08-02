/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */




#ifndef DIAMANT_SCHEDULER_H
#define DIAMANT_SCHEDULER_H


#include <stdbool.h>
#include <stdint.h>

#include "../Diamant_Config.h"

#define ENABLE_INTERRUPTS()   do { __asm(" cpsie   i"); } while (0)
#define DISABLE_INTERRUPTS()  do { __asm(" cpsid   i"); } while (0)

#if DIAMANT_SCHEDULER_VARG_TASK == 1U
typedef void* Scheduler_TaskFunc;
#else
typedef void (*Scheduler_TaskFunc)(void* data);
#endif
typedef void* TaskHandle;

typedef struct {
    void* stackPtr;
    char name[20];
    void* entryPoint;
    uint32_t priority;
    void* stack;
    uint32_t ticksRemaining;
    bool earlyWake;
    bool isRunning;

    void* next;
    void* prev;
} Scheduler_Task;

void Scheduler_Initialize(void);
void Scheduler_Start(void);

#if DIAMANT_SCHEDULER_VARG_TASK == 1U
TaskHandle Scheduler_CreateTask(const char* name, const uint32_t stackSize, const uint8_t priority, const Scheduler_TaskFunc task, const uint8_t numArgs, ...);
#else
TaskHandle Scheduler_CreateTask(const char* name, const uint32_t stackSize, const uint8_t priority, const Scheduler_TaskFunc task, void* data);
#endif
TaskHandle Scheduler_CreateTaskStatic(  const char *name, 
                                        const uint32_t stackSize, 
                                        const uint8_t priority, 
                                        const Scheduler_TaskFunc task, 
                                        uint8_t stackBuffer[stackSize],
                                        Scheduler_Task *taskBuffer,
#if DIAMANT_SCHEDULER_VARG_TASK == 1
                                        const uint8_t numArgs,
                                        ...);
#else
                                        void *ctx);
#endif 

void Scheduler_DeleteTask(TaskHandle handle);
bool Scheduler_Sleep(const uint32_t ticks);
TaskHandle Scheduler_GetCurrentTask(void);
uint8_t Scheduler_TaskGetPriority(const TaskHandle handle);


void Scheduler_EnterCriticalSection(void);
void Scheduler_ExitCriticalSection(void);


#if DIAMANT_SCHEDULER_VARG_TASK == 1
/* Uses K&R syntax to allow varargs */
#define DIAMANT_TASK(taskName, stackSize) \
    static uint8_t func##StackBuffer[stackSize]; \
    Scheduler_Task func##Task; \
    void func();
#else
#define DIAMANT_TASK(taskName, stackSize) \
    static uint8_t taskName##StackBuffer[stackSize]; \
    Scheduler_Task taskName##Task; \
    void taskName(void* ctx);
#endif


#define DIAMANT_REGISTER_TASK(taskName, priority, ...) \
    Scheduler_CreateTaskStatic(#taskName, sizeof(taskName##StackBuffer), priority, &taskName, taskName##StackBuffer, &taskName##Task __VA_OPT__(, __VA_ARGS__));

#endif /* __SCHEDULER_H__ */

