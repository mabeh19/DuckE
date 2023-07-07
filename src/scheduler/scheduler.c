/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <stddef.h>
#include <stdarg.h>
#include "scheduler.h"
#include "event.h"


#define GetParentPointer(ptr, type, memberName) (type*)((char*)ptr - offsetof(type, memberName))


#define Scheduler_SwitchToInternalStack() __asm( \
        " ldr r0, =__internal_stackPtr__\n" \
        " mov sp, r0\n" \
    );


#define Scheduler_SaveCoreRegisters() __asm( \
        "push   {lr}\n"\
        "push   {r0-r7}\n" \
        "mov    r0, r8\n" \
        "mov    r1, r9\n" \
        "mov    r2, r10\n" \
        "mov    r3, r11\n" \
        "mov    r4, r12\n" \
        "push   {r0-r4}\n" \
        "mrs    r0, apsr\n" \
        "mrs    r1, control\n" \
        "push   {r0-r1}\n" \
    )

    //"mrs    r1, primask\n"

#define Scheduler_EnableInterrupts() __asm(" cpsie i")
#define Scheduler_DisableInterrupts() __asm(" cpsid i")

#define Scheduler_CURRENT_TASK() (__task_table__.currentTask)


extern void Scheduler_SwitchTask(void* newStack);
extern void Scheduler_InitTick(void);


typedef struct {
    char name[20];
    void* entryPoint;
    u8 priority;
    void* stack;
} Scheduler_Task;

typedef struct {
    void* stackPtr;
    Scheduler_Task task;
    u32 ticksRemaining;
    bool earlyWake;
} Scheduler_TaskTableEntry;

typedef struct Scheduler_ListEntry {
    Scheduler_TaskTableEntry taskEntry;
    struct Scheduler_ListEntry* next;
    struct Scheduler_ListEntry* prev;
} Scheduler_ListEntry;

typedef struct {
    u32 numEntries;
    Scheduler_ListEntry* readyTasks;
    Scheduler_ListEntry* blockedTasks;
    Scheduler_ListEntry* currentTask;
} Scheduler_TaskTable;


extern void blink(int rate);


static Scheduler_Malloc extMalloc;
static Scheduler_Free extFree;
static Scheduler_Realloc extRealloc;


void Scheduler_UpdateTicks(void);
void Scheduler_ContextSwitch(void);
static void Scheduler_StartFirstTask(Scheduler_TaskTableEntry* task);
static void Scheduler_IdleTask(void* data);
static void Scheduler_RemoveTask(Scheduler_Task* task);
static Scheduler_TaskTableEntry* Scheduler_FindHighestPriorityTaskAvailable(void);
static void Scheduler_MoveTaskToOtherList(Scheduler_ListEntry* entry, Scheduler_ListEntry** removeFrom, Scheduler_ListEntry** addTo);
static void Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry);
static void Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry);

static Scheduler_TaskTable __task_table__;
static volatile void* __attribute__((used)) __internal_stack__;      // `used` attribute prevents linker error
static volatile void* __attribute__((used)) __internal_stackPtr__;


void
Scheduler_Initialize(   Scheduler_Malloc _malloc, 
                        Scheduler_Realloc _realloc, 
                        Scheduler_Free _free)
{
const u32 internalStackSize = 4096;
    extMalloc = _malloc;
    extFree = _free;
    extRealloc = _realloc;

    __task_table__.numEntries = 0;
    __task_table__.readyTasks = NULL;
    __task_table__.blockedTasks = NULL;
    __task_table__.currentTask = NULL;

    __internal_stack__ = extMalloc(internalStackSize);
    __internal_stackPtr__ = __internal_stack__ + internalStackSize - 4;

#ifdef SCHEDULER_VARG_TASK
    Scheduler_CreateTask("Idle Task", 512, 0, Scheduler_IdleTask, 1, NULL);
#else
    Scheduler_CreateTask("Idle Task", 512, 0, Scheduler_IdleTask, NULL);
#endif
}


void
Scheduler_Start(void)
{
    printf("Running first task...\n");
    Scheduler_DisableInterrupts();    
    __auto_type newTask = Scheduler_FindHighestPriorityTaskAvailable();
    Scheduler_InitTick();
    
    Scheduler_StartFirstTask(newTask);
    for ( ;; ) {}
}


TaskHandle
Scheduler_CreateTask(   const char *name, 
                        u32 stackSize, 
                        u8 priority, 
                        Scheduler_TaskFunc task,
#ifdef SCHEDULER_VARG_TASK
                        u8 numArgs,
                        ...)
#else
                        void *data)
#endif 
{
    Scheduler_ListEntry** nextTaskEntry = NULL;
    Scheduler_Task newTask;

    strncpy(newTask.name, name, sizeof(newTask.name));
    newTask.entryPoint = task;
    newTask.stack = extMalloc(stackSize);
    newTask.priority = priority;

    if ( newTask.stack == NULL ) {
        goto taskAllocError;
    }

    memset(newTask.stack, 0x00, stackSize);

    nextTaskEntry = &__task_table__.readyTasks;

    while (*nextTaskEntry) {
        nextTaskEntry = &(*nextTaskEntry)->next;
    }

    *nextTaskEntry = extMalloc(sizeof(Scheduler_ListEntry));
    
    if (*nextTaskEntry) {
        (*nextTaskEntry)->taskEntry.task = newTask;
        __task_table__.numEntries++;
        (*nextTaskEntry)->taskEntry.stackPtr = newTask.stack + stackSize - 4; // set stack pointer to end of allocated area

        memcpy((*nextTaskEntry)->taskEntry.stackPtr, &newTask.entryPoint, sizeof(newTask.entryPoint));

#ifdef SCHEDULER_VARG_TASK
        va_list va;
        va_start(va, numArgs);
        for (u32 i = 0; i < numArgs; i++) {
            void* arg = va_arg(va, void*);

            memcpy((*nextTaskEntry)->taskEntry.stackPtr - (sizeof(uint32_t) * (8 - i)), arg, sizeof(void*));          
        }
        va_end(va);
#else
        memcpy((*nextTaskEntry)->taskEntry.stackPtr - (sizeof(uint32_t) * 8), data, sizeof(data));
#endif
        (*nextTaskEntry)->taskEntry.stackPtr -= 15 * sizeof(uint32_t);
        (*nextTaskEntry)->taskEntry.ticksRemaining = 0;
        (*nextTaskEntry)->next = NULL;
    } else {
        goto listEntryAllocError;
    }

    return (TaskHandle)&(*nextTaskEntry)->taskEntry.task;

tableEntryAllocError:
    extFree(nextTaskEntry);

listEntryAllocError:
    extFree(newTask.stack);

taskAllocError:


    printf("Failed to allocate %s\n", name);

    return NULL;
}


bool 
Scheduler_Sleep(u32 ticks)
{
    Scheduler_ListEntry* currentTask = Scheduler_CURRENT_TASK();
    currentTask->taskEntry.ticksRemaining = ticks;
    Scheduler_MoveTaskToBlockedList(currentTask);
    Scheduler_ContextSwitch();

    bool earlyWake = currentTask->taskEntry.earlyWake;

    currentTask->taskEntry.earlyWake = false;

    return earlyWake;
}


void 
Scheduler_DeleteTask(TaskHandle handle)
{
    Scheduler_DisableInterrupts();

    if (!handle) {
        /* 
         *  Move to internal stack before removing this task.
         *  We don't have to worry about backing up regs.
         */
        Scheduler_Task* task = &Scheduler_CURRENT_TASK()->taskEntry.task;
        __asm(" mov     r2, r0");

        Scheduler_SwitchToInternalStack();

        __asm(" mov     r0, r2");

        Scheduler_RemoveTask(task);

        Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable();

        Scheduler_EnableInterrupts();

        Scheduler_SwitchTask(newTask->stackPtr);
    
    } else {
        /*
         *  Delete other task
         */
        Scheduler_Task* task = (Scheduler_Task*)handle;
        Scheduler_RemoveTask(task);
    }
    Scheduler_EnableInterrupts();
}



TaskHandle Scheduler_GetCurrentTask(void)
{
    return &Scheduler_CURRENT_TASK()->taskEntry.task;
}



static void
Scheduler_IdleTask(void* data)
{
    
    for (;;) {}
}


extern void Scheduler_SaveStackPointer(void** stackPtr);


static Scheduler_TaskTableEntry* 
Scheduler_FindHighestPriorityTaskAvailable(void)
{
bool switchTask = false;
Scheduler_TaskTableEntry* currentTask = &Scheduler_CURRENT_TASK()->taskEntry;
u8 newTaskPriority = 0;
Scheduler_TaskTableEntry* highestPriorityTask = currentTask;

    for (Scheduler_ListEntry* entry = __task_table__.readyTasks; entry != NULL; entry = entry->next) {

        if ( entry->taskEntry.ticksRemaining == 0U && 
            (entry->taskEntry.task.priority + 1) > newTaskPriority ) {
            
            newTaskPriority = entry->taskEntry.task.priority + 1;
            __task_table__.currentTask = entry;
            switchTask = true;
        }
    }

    if ( switchTask ) {
        highestPriorityTask = &Scheduler_CURRENT_TASK()->taskEntry;
    }

    return highestPriorityTask;
}


static void
Scheduler_StartFirstTask(Scheduler_TaskTableEntry* task)
{
    // __asm(  " push {r0}\n "
    //         " ldr r0, =__internal_stackPtr__\n"
    //         " mov sp, r0\n"
    //         " pop  {r0}");
    
    Scheduler_EnableInterrupts();

    Scheduler_SwitchTask(task->stackPtr);
}


void Scheduler_ContextSwitch(void) __attribute__((naked));


void
Scheduler_ContextSwitch(void)
{
    Scheduler_DisableInterrupts();
    Scheduler_SaveCoreRegisters();
    Scheduler_SaveStackPointer(&Scheduler_CURRENT_TASK()->taskEntry.stackPtr);
    Scheduler_SwitchToInternalStack();

    volatile Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable();

    Scheduler_EnableInterrupts();

    Scheduler_SwitchTask(newTask->stackPtr);
}


void
Scheduler_UpdateTicks(void)
{
    for (Scheduler_ListEntry* entry = __task_table__.blockedTasks; entry != NULL; entry = entry->next) {

        if ( entry->taskEntry.ticksRemaining > 0U ) {
            entry->taskEntry.ticksRemaining--;
        } else {
            Scheduler_MoveTaskToReadyList(entry);
        }
    }
}


static void
Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &__task_table__.readyTasks, &__task_table__.blockedTasks);
}


static void
Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &__task_table__.blockedTasks, &__task_table__.readyTasks);
}


static void
Scheduler_MoveTaskToOtherList(  Scheduler_ListEntry* entry,
                                Scheduler_ListEntry** removeFrom,
                                Scheduler_ListEntry** addTo)
{
    Scheduler_ListEntry* prevEntry = NULL;

    for (removeFrom; *removeFrom != NULL; removeFrom = &(*removeFrom)->next) {

        if (*removeFrom != entry) {
            prevEntry = *removeFrom;
            continue;
        }

        if (prevEntry) {
            prevEntry->next = entry->next;
        }
        else {
            *removeFrom = (*removeFrom)->next;
        }

        entry->next = *addTo;
        *addTo = entry;

        break;
    }
}


static Scheduler_ListEntry*
Scheduler_TaskToListEntry(Scheduler_Task* task)
{
    Scheduler_TaskTableEntry* tableEntry = GetParentPointer(task, Scheduler_TaskTableEntry, task);
    return GetParentPointer(tableEntry, Scheduler_ListEntry, taskEntry);
}


static void
Scheduler_FreeTask(Scheduler_ListEntry* task)
{
    extFree(task->taskEntry.task.stack);
    extFree(task);
}


static void
Scheduler_RemoveTask(Scheduler_Task* task)
{
Scheduler_ListEntry** listsToCheck[] = {
    &__task_table__.blockedTasks,
    &__task_table__.readyTasks,
    NULL
};
    Scheduler_ListEntry* deleteListPtr = NULL;
    Scheduler_ListEntry* taskListEntry = Scheduler_TaskToListEntry(task);

    for (uint32_t i = 0U; i < (sizeof(listsToCheck) / sizeof(listsToCheck[0])); i++) {
        Scheduler_ListEntry** list = listsToCheck[i];
        Scheduler_MoveTaskToOtherList(taskListEntry, list, &deleteListPtr);

        if (deleteListPtr) {
            Scheduler_FreeTask(deleteListPtr);
            break;
        }
    }
}


void
Scheduler_WakeTask(TaskHandle task)
{
    Scheduler_ListEntry* entry = Scheduler_TaskToListEntry(task);

    entry->taskEntry.ticksRemaining = 0U;
    entry->taskEntry.earlyWake = true;
}


