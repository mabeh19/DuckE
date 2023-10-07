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
#include "../Diamant_Config.h"
#include "scheduler.h"
#include "../target/target.h"


#define GetParentPointer(ptr, type, memberName) (type*)((char*)ptr - offsetof(type, memberName))


extern void* Diamant_Malloc(size_t);
extern void Diamant_Free(void*);


typedef struct {
    char name[20];
    void* entryPoint;
    uint32_t priority;
    void* stack;
} Scheduler_Task_t;

typedef struct {
    void* stackPtr;
    Scheduler_Task_t task;
    uint32_t ticksRemaining;
#if DIAMANT_FPU_SUPPORT == 1U
    const bool useFPU;
#endif
    bool earlyWake;
    bool isRunning;
    bool isDynamicallyAllocated;
} Scheduler_TaskTableEntry;

typedef struct Scheduler_ListEntry {
    Scheduler_TaskTableEntry taskEntry;
    struct Scheduler_ListEntry* next;
    struct Scheduler_ListEntry* prev;
    struct Scheduler_ListEntry **owner;
} Scheduler_ListEntry;

typedef struct {
    uint32_t numEntries;
    Scheduler_ListEntry* readyTasks;
    Scheduler_ListEntry* blockedTasks;
    Scheduler_ListEntry* currentTask[DIAMANT_NUM_CORES];
} Scheduler_TaskTable;


static Scheduler_ListEntry* Scheduler_CURRENT_TASK(void);
bool Scheduler_UpdateTicks(void);
void Scheduler_ContextSwitch(void);
static void Scheduler_IdleTask(void* data);
static void Scheduler_RemoveTask(Scheduler_Task_t* task);
static Scheduler_TaskTableEntry* Scheduler_FindHighestPriorityTaskAvailable(uint32_t core);
static void Scheduler_MoveTaskToOtherList(Scheduler_ListEntry* entry, Scheduler_ListEntry** addTo);
static void Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry);
static void Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry);
static Scheduler_ListEntry* Scheduler_TaskToListEntry(const Scheduler_Task_t* task);
static inline bool Scheduler_TaskIsRunning(const Scheduler_TaskTableEntry* tableEntry);
static void Scheduler_RemoveFromList(Scheduler_ListEntry *entry);
static void Scheduler_AddToList(Scheduler_ListEntry *entry, Scheduler_ListEntry **list);


static Scheduler_TaskTable task_table;
static volatile uint8_t __attribute__((used)) internal_stack[DIAMANT_INTERNAL_STACK_SIZE];      // `used` attribute prevents linker error
static volatile void* __attribute__((used)) internal_stackPtr;


DIAMANT_TASK(Scheduler_IdleTask, DIAMANT_IDLE_STACK_SIZE, DIAMANT_TASK_NO_FPU);


int32_t
Scheduler_Initialize(void)
{
    int32_t retcode = 0U;

    task_table.numEntries = 0U;
    task_table.readyTasks = NULL;
    task_table.blockedTasks = NULL;
    memset(task_table.currentTask, 0x00, sizeof(task_table.currentTask));


    /* Refactor to return error */
    if (sizeof(Scheduler_Task) != sizeof(Scheduler_ListEntry)) {
        retcode = -1;
    }
    
    internal_stackPtr = internal_stack + DIAMANT_INTERNAL_STACK_SIZE - 4U;

    for (uint32_t i = 0U; i < DIAMANT_NUM_CORES; i++) {
        DIAMANT_REGISTER_TASK(Scheduler_IdleTask, 0, NULL);
    }

    return retcode;
}


void
Scheduler_Start(void)
{
    Target_DisableInterrupts();

    Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable(0U);
    Target_InitTick();

#if DIAMANT_NUM_CORES > 1
    for (uint32_t core = 1U; core < DIAMANT_NUM_CORES; core++) {
        Scheduler_TaskTableEntry *entry = Scheduler_FindHighestPriorityTaskAvailable(core);
        
        MultiCore_RunTaskOnSecondaryCore(core, Scheduler_SwitchTaskNoSp, entry->stackPtr);
    }
#endif
    
    Target_StartFirstTask(newTask);
    for ( ;; ) {}
}


TaskHandle
Scheduler_CreateTask(   const char *name, 
                        const uint32_t stackSize, 
                        const uint8_t priority, 
                        const Scheduler_TaskFunc task,
                        void *data)
{
    uint8_t *stack = Diamant_Malloc(stackSize);
    Scheduler_Task *newListEntry = Diamant_Malloc(sizeof(Scheduler_Task));

    if (newListEntry == NULL) {
        goto clean_up;
    }

    if (stack == NULL) {
        goto clean_up;
    }

    strncpy((char*)newListEntry->name, name, strlen(newListEntry->name));
    newListEntry->isDynamicallyAllocated = true;

    return Scheduler_CreateTaskStatic(stackSize, priority, task, stack, newListEntry, data);


clean_up:
    if (newListEntry) {
        Diamant_Free(newListEntry);
    }

    if (stack) {
        Diamant_Free(stack);
    }

    return NULL;
}


TaskHandle 
Scheduler_CreateTaskStatic( const uint32_t stackSize,
                            const uint8_t priority, 
                            const Scheduler_TaskFunc task, 
                            uint8_t *stackBuffer,
                            Scheduler_Task *taskBuffer,
							void *data)
{
    Scheduler_ListEntry** nextTaskEntry = NULL;
    Scheduler_ListEntry* newTask = (Scheduler_ListEntry*)taskBuffer;

    newTask->taskEntry.task.entryPoint = task;
    newTask->taskEntry.task.stack = stackBuffer;
    newTask->taskEntry.task.priority = priority;

    memset(newTask->taskEntry.task.stack, 0x00U, stackSize);

    nextTaskEntry = &task_table.readyTasks;
    if (*nextTaskEntry != NULL) {
        (*nextTaskEntry)->prev = (Scheduler_ListEntry*)taskBuffer;
    }
    ((Scheduler_ListEntry*)taskBuffer)->next = (*nextTaskEntry);
    *nextTaskEntry = (Scheduler_ListEntry*)taskBuffer; 
    newTask->taskEntry.stackPtr = newTask->taskEntry.task.stack + stackSize - 4U; // set stack pointer to end of allocated area
    newTask->taskEntry.stackPtr = Target_SetEntryRegisters(newTask->taskEntry.stackPtr, data, newTask->taskEntry.task.entryPoint);

    newTask->taskEntry.ticksRemaining = 0U;
    newTask->prev = NULL;
    newTask->owner = &task_table.readyTasks;
    newTask->taskEntry.isRunning = false;
    newTask->taskEntry.earlyWake = false;


    task_table.numEntries++;

    return (TaskHandle)&newTask->taskEntry.task;
}


bool 
Scheduler_Sleep(uint32_t ticks)
{
    bool earlyWake = true;

    if (ticks > 0U) {
        Scheduler_ListEntry* currentTask = Scheduler_CURRENT_TASK();
        currentTask->taskEntry.ticksRemaining = ticks;
        Scheduler_MoveTaskToBlockedList(currentTask);
        Target_Yield();

        earlyWake = currentTask->taskEntry.earlyWake;

        currentTask->taskEntry.earlyWake = false;
    }

    return earlyWake;
}


void 
Scheduler_DeleteTask(TaskHandle handle)
{
    Target_DisableInterrupts();

    if (handle == NULL) {
        /* 
         *  We don't have to worry about backing up regs before switching
         */
        Scheduler_Task_t* task = &Scheduler_CURRENT_TASK()->taskEntry.task;

        Scheduler_RemoveTask(task);

        uint32_t thisCore = MultiCore_GetCoreNumber();
        Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable(thisCore);

        Target_EnableInterrupts();

        Target_SwitchTask(newTask->stackPtr);
    
    } else {
        /*
         *  Delete other task
         */
        Scheduler_Task_t* task = (Scheduler_Task_t*)handle;
        Scheduler_RemoveTask(task);
    }
    Target_EnableInterrupts();
}



TaskHandle
Scheduler_GetCurrentTask(void)
{
    return &Scheduler_CURRENT_TASK()->taskEntry.task;
}


uint8_t
Scheduler_TaskGetPriority(const TaskHandle handle)
{
    return ((const Scheduler_Task_t*)handle)->priority;
}


static void
Scheduler_IdleTask(void* ctx)
{
    for (;;) {
        /* spin forever until another task is ready */
    }
}


extern void Scheduler_SaveStackPointer(void** stackPtr);


static Scheduler_TaskTableEntry* 
Scheduler_FindHighestPriorityTaskAvailable(uint32_t core)
{
bool switchTask = false;
Scheduler_TaskTableEntry* currentTask = &task_table.currentTask[core]->taskEntry;
uint8_t newTaskPriority = 0U;
Scheduler_TaskTableEntry* highestPriorityTask = currentTask;

    for (Scheduler_ListEntry* entry = task_table.readyTasks; entry != NULL; entry = entry->next) {

        if ( entry->taskEntry.ticksRemaining == 0U && 
            (entry->taskEntry.task.priority + 1U) > newTaskPriority && 
             !Scheduler_TaskIsRunning(&entry->taskEntry)) {
            
            newTaskPriority = entry->taskEntry.task.priority + 1U;
            task_table.currentTask[core] = entry;
            switchTask = true;
        }
    }

    if ( switchTask ) {
        highestPriorityTask = &task_table.currentTask[core]->taskEntry;
        highestPriorityTask->isRunning = true;
    }

    return highestPriorityTask;
}


void Scheduler_ContextSwitch(void);


void
Scheduler_ContextSwitch(void)
{
    Scheduler_CURRENT_TASK()->taskEntry.isRunning = false;

    /*
     * Switch to newest highest priority task 
     */
    (void)Scheduler_FindHighestPriorityTaskAvailable(MultiCore_GetCoreNumber());
}


bool
Scheduler_UpdateTicks(void)
{
    bool higherPrioTaskAwoken = false;
    for (Scheduler_ListEntry* entry = task_table.blockedTasks; entry != NULL;) {
        Scheduler_ListEntry* next = entry->next;
        if ( entry->taskEntry.ticksRemaining > 0U ) {
            entry->taskEntry.ticksRemaining--;
        } 
        else {
            Scheduler_MoveTaskToReadyList(entry);
            if (entry->taskEntry.task.priority >= Scheduler_CURRENT_TASK()->taskEntry.task.priority) {
                higherPrioTaskAwoken = true;
            }
        }
        entry = next;
    }

    return higherPrioTaskAwoken;
}


static void
Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &task_table.blockedTasks);
}


static void
Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &task_table.readyTasks);
}


static void
Scheduler_MoveTaskToOtherList(  Scheduler_ListEntry* entry,
                                Scheduler_ListEntry** addTo)
{
    Scheduler_EnterCriticalSection();
    Scheduler_RemoveFromList(entry);
    Scheduler_AddToList(entry, addTo);
    Scheduler_ExitCriticalSection();
}


static void
Scheduler_RemoveFromList(Scheduler_ListEntry *entry)
{
    if (entry->prev != NULL) {
        entry->prev->next = entry->next;
    } 
    else {
        *entry->owner = entry->next;
    }

    if (entry->next != NULL) {
        entry->next->prev = entry->prev;    
    } 
}


static void
Scheduler_AddToList(Scheduler_ListEntry *entry, Scheduler_ListEntry **list)
{
    entry->owner = list;
    entry->next = *list;
    if (*list != NULL) {
        (*list)->prev = entry;
    }
    entry->prev = NULL;
    *list = entry;
}


static Scheduler_ListEntry*
Scheduler_TaskToListEntry(const Scheduler_Task_t* task)
{
    Scheduler_TaskTableEntry* tableEntry = GetParentPointer(task, Scheduler_TaskTableEntry, task);
    return GetParentPointer(tableEntry, Scheduler_ListEntry, taskEntry);
}


static void
Scheduler_FreeTask(Scheduler_ListEntry* task)
{
    if (task->taskEntry.isDynamicallyAllocated) {
        Diamant_Free(task->taskEntry.task.stack);
        Diamant_Free(task);
    }
}


static void
Scheduler_RemoveTask(Scheduler_Task_t* task)
{
    Scheduler_ListEntry *entry = Scheduler_TaskToListEntry(task);
    task_table.numEntries--;
    Scheduler_RemoveFromList(entry);
    Scheduler_FreeTask(entry);
}


void
Scheduler_WakeTask(TaskHandle task)
{
    Scheduler_ListEntry* entry = Scheduler_TaskToListEntry(task);

    entry->taskEntry.ticksRemaining = 0U;
    entry->taskEntry.earlyWake = true;
}


static Scheduler_ListEntry* 
Scheduler_CURRENT_TASK(void)
{
    return task_table.currentTask[MultiCore_GetCoreNumber()];
}


static inline bool
Scheduler_TaskIsRunning(const Scheduler_TaskTableEntry* tableEntry)
{
    return tableEntry->isRunning;
}


static uint32_t criticality_depth = 0U;

void
Scheduler_EnterCriticalSection(void)
{
    Target_DisableInterrupts();
    criticality_depth++;
}


void
Scheduler_ExitCriticalSection(void)
{
    criticality_depth--;

    if (criticality_depth == 0U) {
        Target_EnableInterrupts();
    }
}



#ifdef UTEST

static void Scheduler_TestMoveTaskToOtherList(void);

void Scheduler_RegisterUTests(void)
{
    uTest_RegisterTest(&Scheduler_TestMoveTaskToOtherList);
}



static void Scheduler_TestMoveTaskToOtherList(void)
{
#define LINK(n, p)  n.next = &p; p.prev = &n; n.owner = &tbl.readyTasks;

    Scheduler_TaskTable tbl;
    Scheduler_ListEntry e1;
    Scheduler_ListEntry e2;
    Scheduler_ListEntry e3;
    Scheduler_ListEntry e4;
    Scheduler_ListEntry e5;

    tbl.readyTasks = &e1;
    tbl.blockedTasks = NULL;
    e1.prev = NULL;
    e5.next = NULL;
    LINK(e1, e2);
    LINK(e2, e3);
    LINK(e3, e4);
    LINK(e4, e5);
#undef LINK

    Scheduler_MoveTaskToOtherList(&e2, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e2);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == NULL);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e3);
    uTest_Assert(e3.prev == &e1);

    Scheduler_MoveTaskToOtherList(&e3, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e3);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == &e3);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e4);
    uTest_Assert(e3.prev == NULL);
    uTest_Assert(e3.next == &e2);

    Scheduler_MoveTaskToOtherList(&e1, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e1);
    uTest_Assert(tbl.readyTasks == &e4);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == &e3);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e3);
    uTest_Assert(e3.prev == &e1);
    uTest_Assert(e3.next == &e2);
    uTest_Assert(e4.next == &e5);


    Scheduler_MoveTaskToOtherList(&e5, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e5);
    uTest_Assert(tbl.readyTasks == &e4);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == &e3);
    uTest_Assert(e1.prev == &e5);
    uTest_Assert(e1.next == &e3);
    uTest_Assert(e3.prev == &e1);
    uTest_Assert(e3.next == &e2);
    uTest_Assert(e4.next == NULL);
    uTest_Assert(e5.next == &e1);
    uTest_Assert(e5.prev == NULL);

    Scheduler_MoveTaskToOtherList(&e4, &tbl.blockedTasks);
    uTest_Assert(tbl.readyTasks == NULL);
    uTest_Assert(tbl.blockedTasks == &e4);
    uTest_Assert(e5.prev == &e4);
    uTest_Assert(e4.next == &e5);

    
    Scheduler_MoveTaskToOtherList(&e4, &tbl.readyTasks);
    uTest_Assert(tbl.readyTasks == &e4);
    uTest_Assert(tbl.blockedTasks == &e5);
    uTest_Assert(e4.next == NULL);
    uTest_Assert(e4.prev == NULL);
    uTest_Assert(e5.prev == NULL);
}

#endif

