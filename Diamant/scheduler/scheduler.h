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

#ifdef __cplusplus
extern "C" {
#endif

#define DIAMANT_TASK_NO_FPU		(0U)
#define DIAMANT_TASK_USE_FPU	(1U)

typedef void (*Scheduler_TaskFunc)(void* data);
typedef void* TaskHandle;

typedef struct {
    void* stackPtr;
    const char name[20];
    void* entryPoint;
    uint32_t priority;
    void* stack;
    uint32_t ticksRemaining;
#if DIAMANT_FPU_SUPPORT == 1U
    const bool useFPU;
#endif
    bool earlyWake;
    bool isRunning;
    bool isDynamicallyAllocated;

    void* next;
    void* prev;
    void **owner;
} Scheduler_Task;

int32_t Scheduler_Initialize(void);
void Scheduler_Start(void);

TaskHandle Scheduler_CreateTask(const char* name, const uint32_t stackSize, const uint8_t priority, const Scheduler_TaskFunc task, void* data);
TaskHandle Scheduler_CreateTaskStatic(  const uint32_t stackSize,
										const uint8_t priority,
                                        const Scheduler_TaskFunc task, 
                                        uint8_t* stackBuffer,
                                        Scheduler_Task *taskBuffer,
                                        void *ctx);

void Scheduler_DeleteTask(TaskHandle handle);
bool Scheduler_Sleep(const uint32_t ticks);
TaskHandle Scheduler_GetCurrentTask(void);
uint8_t Scheduler_TaskGetPriority(const TaskHandle handle);


void Scheduler_EnterCriticalSection(void);
void Scheduler_ExitCriticalSection(void);


#if DIAMANT_FPU_SUPPORT == 1U
#define DIAMANT_TASK(taskName, stackSize, fpu_support) \
    static uint8_t taskName##StackBuffer[(stackSize)]; \
    static Scheduler_Task taskName##Task = { .name = #taskName, .useFPU = (fpu_support) }; \
    static void taskName(void* ctx);
#else
#define DIAMANT_TASK(taskName, stackSize) \
    static uint8_t taskName##StackBuffer[(stackSize)]; \
    static Scheduler_Task taskName##Task = { .name = #taskName }; \
    static void taskName(void* ctx);
#endif


#define DIAMANT_REGISTER_TASK(taskName, priority, _ctx) \
    Scheduler_CreateTaskStatic(sizeof(taskName##StackBuffer), priority, &taskName, taskName##StackBuffer, &taskName##Task, _ctx);




#ifdef UTEST
void Scheduler_RegisterUTests(void);
#endif

#ifdef __cplusplus
}
#endif

#endif /* __SCHEDULER_H__ */

