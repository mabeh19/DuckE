/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */




#ifndef INC_SCHEDULER_H
#define INC_SCHEDULER_H


#include <stdbool.h>

#include "../stdtypes.h"


#define SCHEDULER_VARG_TASK



#define ENABLE_INTERRUPTS()   do { __asm(" cpsie   i"); } while (0)
#define DISABLE_INTERRUPTS()  do { __asm(" cpsid   i"); } while (0)

#ifdef SCHEDULER_VARG_TASK
typedef void* Scheduler_TaskFunc;
#else
typedef void (*Scheduler_TaskFunc)(void* data);
#endif
typedef void* (*Scheduler_Malloc)(size_t size);
typedef void (*Scheduler_Free)(void* ptr);
typedef void* (*Scheduler_Realloc)(void* ptr, size_t size);
typedef void* TaskHandle;

void Scheduler_Initialize(Scheduler_Malloc _malloc, Scheduler_Realloc _realloc, Scheduler_Free _free);
void Scheduler_Start(void);

#ifdef SCHEDULER_VARG_TASK
TaskHandle Scheduler_CreateTask(const char* name, u32 stackSize, u8 priority, Scheduler_TaskFunc task, u8 numArgs, ...);
#else
TaskHandle Scheduler_CreateTask(const char* name, u32 stackSize, u8 priority, Scheduler_TaskFunc task, void* data);
#endif
void Scheduler_DeleteTask(TaskHandle handle);
bool Scheduler_Sleep(u32 ticks);
TaskHandle Scheduler_GetCurrentTask(void);

#endif /* __SCHEDULER_H__ */

