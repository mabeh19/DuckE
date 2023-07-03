



#ifndef __SCHEDULER_H__
#define __SCHEDULER_H__

#include "../stdtypes.h"

#define ENABLE_INTERRUPTS()   do { __asm(" cpsie   i"); } while (0)
#define DISABLE_INTERRUPTS()  do { __asm(" cpsid   i"); } while (0)


typedef void (*Scheduler_TaskFunc)(void* data);
typedef void* (*Scheduler_Malloc)(size_t size);
typedef void (*Scheduler_Free)(void* ptr);
typedef void* (*Scheduler_Realloc)(void* ptr, size_t size);
typedef void* TaskHandle;

void Scheduler_Initialize(Scheduler_Malloc _malloc, Scheduler_Realloc _realloc, Scheduler_Free _free);
void Scheduler_Start(void);
TaskHandle Scheduler_CreateTask(const char* name, u32 stackSize, u8 priority, Scheduler_TaskFunc task, void* data);
void Scheduler_DeleteTask(TaskHandle handle);
void Scheduler_Sleep(u32 ticks);

#endif /* __SCHEDULER_H__ */
