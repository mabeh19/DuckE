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
#include "../port/multicore.h"
#include "../port/port.h"


#include "../../CUtils/test/uTest/uTest.h"
#include "../../CUtils/test/Test_Bench/Test_Bench.h"


#define GetParentPointer(ptr, type, memberName) (type*)((char*)ptr - offsetof(type, memberName))



extern void Scheduler_SwitchTask(void* newStack);
extern void Scheduler_SwitchTaskNoSp(void);
extern void Scheduler_InitTick(void);
extern void Scheduler_PushEntryRegisters(void *stackPtr, void *data);


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
    bool earlyWake;
    bool isRunning;
    bool isDynamicallyAllocated;
} Scheduler_TaskTableEntry;

typedef struct Scheduler_ListEntry {
    Scheduler_TaskTableEntry taskEntry;
    struct Scheduler_ListEntry* next;
    struct Scheduler_ListEntry* prev;
} Scheduler_ListEntry;

typedef struct {
    uint32_t numEntries;
    Scheduler_ListEntry* readyTasks;
    Scheduler_ListEntry* blockedTasks;
    Scheduler_ListEntry* currentTask[DIAMANT_NUM_CORES];
} Scheduler_TaskTable;


extern void blink(int rate);


static Scheduler_ListEntry* Scheduler_CURRENT_TASK(void);
void Scheduler_UpdateTicks(void);
void Scheduler_ContextSwitch(void);
static void Scheduler_StartFirstTask(const Scheduler_TaskTableEntry* task);
static void Scheduler_IdleTask(void* data);
static void Scheduler_RemoveTask(Scheduler_Task_t* task);
static Scheduler_TaskTableEntry* Scheduler_FindHighestPriorityTaskAvailable(uint32_t core);
static void Scheduler_MoveTaskToOtherList(Scheduler_ListEntry* entry, Scheduler_ListEntry** removeFrom, Scheduler_ListEntry** addTo);
static void Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry);
static void Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry);
static Scheduler_ListEntry* Scheduler_TaskToListEntry(const Scheduler_Task_t* task);
static inline bool Scheduler_TaskIsRunning(const Scheduler_TaskTableEntry* tableEntry);


static Scheduler_TaskTable task_table;
static volatile uint8_t __attribute__((used)) internal_stack[DIAMANT_INTERNAL_STACK_SIZE];      // `used` attribute prevents linker error
static volatile void* __attribute__((used)) internal_stackPtr;


void
Scheduler_Initialize(void)
{
static Scheduler_Task idleTasks[DIAMANT_NUM_CORES];
static uint8_t idleTasksStack[DIAMANT_IDLE_STACK_SIZE];

    task_table.numEntries = 0U;
    task_table.readyTasks = NULL;
    task_table.blockedTasks = NULL;
    memset(task_table.currentTask, 0x00, sizeof(task_table.currentTask));


    /* Refactor to return error */
    if (sizeof(Scheduler_Task) != sizeof(Scheduler_ListEntry)) {
        printf("Task struct size assertion failed! %zu != %zu\n", sizeof(Scheduler_Task), sizeof(Scheduler_ListEntry));

        for (;;) {

        }
    }
    
    internal_stackPtr = internal_stack + DIAMANT_INTERNAL_STACK_SIZE - DIAMANT_PORT_REG_SIZE;

    for (uint32_t i = 0U; i < DIAMANT_NUM_CORES; i++) {
        char taskName[20U] = {0U};
        sprintf(taskName, "Idle Task %u", i);
#if DIAMANT_SCHEDULER_VARG_TASK == 1U
        Scheduler_CreateTask(taskName, DIAMANT_IDLE_STACK_SIZE, 0U, Scheduler_IdleTask, 1U, NULL);
#else
        Scheduler_CreateTaskStatic(taskName, DIAMANT_IDLE_STACK_SIZE, 0U, Scheduler_IdleTask, idleTasksStack, &idleTasks[i], NULL);
#endif
    }
}


void
Scheduler_Start(void)
{
    printf("Running first task...\n");
    Scheduler_DisableInterrupts();

    __auto_type newTask = Scheduler_FindHighestPriorityTaskAvailable(0U);
    Scheduler_InitTick();
    
    Scheduler_StartFirstTask(newTask);
    for ( ;; ) {}
}


TaskHandle
Scheduler_CreateTask(   const char *name, 
                        const uint32_t stackSize, 
                        const uint8_t priority, 
                        const Scheduler_TaskFunc task,
#if DIAMANT_SCHEDULER_VARG_TASK == 1
                        const uint8_t numArgs,
                        ...)
#else
                        void *data)
#endif 
{
    uint8_t *stack = Diamant_Malloc(stackSize);
    Scheduler_Task *newListEntry = Diamant_Malloc(sizeof(Scheduler_Task));

    if (newListEntry == NULL) {
        goto clean_up;
    }

    if (stack == NULL) {
        goto clean_up;
    }

    newListEntry->isDynamicallyAllocated = true;

#if DIAMANT_SCHEDULER_VARG_TASK == 1
    return Scheduler_CreateTaskStatic(name, stackSize, priority, task, stack, newListEntry, numArgs, ...);
#else 
    return Scheduler_CreateTaskStatic(name, stackSize, priority, task, stack, newListEntry, data);
#endif


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
Scheduler_CreateTaskStatic( const char *name, 
                            const uint32_t stackSize, 
                            const uint8_t priority, 
                            const Scheduler_TaskFunc task, 
                            uint8_t stackBuffer[stackSize],
                            Scheduler_Task *taskBuffer,
#if DIAMANT_SCHEDULER_VARG_TASK == 1
                        const uint8_t numArgs,
                        ...)
#else
                        void *data)
#endif 
{
    Scheduler_ListEntry** nextTaskEntry = NULL;
    Scheduler_Task_t newTask;

    memcpy(newTask.name, name, sizeof(newTask.name));
    newTask.entryPoint = task;
    newTask.stack = stackBuffer;
    newTask.priority = priority;

    memset(newTask.stack, 0x00U, stackSize);

    nextTaskEntry = &task_table.readyTasks;
    if (*nextTaskEntry != NULL) {
        (*nextTaskEntry)->prev = (Scheduler_ListEntry*)taskBuffer;
    }
    ((Scheduler_ListEntry*)taskBuffer)->next = (*nextTaskEntry);
    *nextTaskEntry = (Scheduler_ListEntry*)taskBuffer; 
    (*nextTaskEntry)->taskEntry.task = newTask;
    (*nextTaskEntry)->taskEntry.stackPtr = newTask.stack + stackSize - DIAMANT_PORT_REG_SIZE; // set stack pointer to end of allocated area

    memcpy((*nextTaskEntry)->taskEntry.stackPtr, &newTask.entryPoint, sizeof(newTask.entryPoint));

#if DIAMANT_SCHEDULER_VARG_TASK == 1
    va_list va;
    va_start(va, numArgs);
    for (uint32_t i = 0U; i < numArgs; i++) {
        void* arg = va_arg(va, void*);

        memcpy((*nextTaskEntry)->taskEntry.stackPtr - (DIAMANT_PORT_REG_SIZE * (8U - i)), &arg, sizeof(void*));  // currently this line is not portable
    }
    va_end(va);
#else
    Scheduler_PushEntryRegisters((*nextTaskEntry)->taskEntry.stackPtr, data);
#endif

    (*nextTaskEntry)->taskEntry.stackPtr = (char*)(*nextTaskEntry)->taskEntry.stackPtr - DIAMANT_PORT_REG_SIZE * DIAMANT_PORT_NUM_REGS;
    (*nextTaskEntry)->taskEntry.ticksRemaining = 0U;
    (*nextTaskEntry)->prev = NULL;
    (*nextTaskEntry)->taskEntry.isRunning = false;
    (*nextTaskEntry)->taskEntry.earlyWake = false;


    task_table.numEntries++;

    return (TaskHandle)&(*nextTaskEntry)->taskEntry.task;
}


bool 
Scheduler_Sleep(uint32_t ticks)
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

    if (handle == NULL) {
        /* 
         *  Move to internal stack before removing this task.
         *  We don't have to worry about backing up regs.
         */
        Scheduler_Task_t* task = &Scheduler_CURRENT_TASK()->taskEntry.task;

        Scheduler_BackupR0();
        Scheduler_SwitchToInternalStack();
        Scheduler_RestoreR0();

        Scheduler_RemoveTask(task);

        uint32_t thisCore = MultiCore_GetCoreNumber();
        Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable(thisCore);

        Scheduler_EnableInterrupts();

        Scheduler_SwitchTask(newTask->stackPtr);
    
    } else {
        /*
         *  Delete other task
         */
        Scheduler_Task_t* task = (Scheduler_Task_t*)handle;
        Scheduler_RemoveTask(task);
    }
    Scheduler_EnableInterrupts();
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
Scheduler_IdleTask(void* data)
{
    asm volatile (
        "mov    $0x11111111, %rax\n"
        "mov    $0x22222222, %rbx\n"
        "mov    $0x33333333, %rcx\n"
        "mov    $0x44444444, %rdx\n"
        "mov    $0x55555555, %rdi\n"
        "mov    $0x66666666, %rsi\n"
        "mov    $0x77777777, %r8\n"
        "mov    $0x88888888, %r9\n"
        "mov    $0x99999999, %r10\n"
        "mov    $0xAAAAAAAA, %r11\n"
        "mov    $0xBBBBBBBB, %r12\n"
        "mov    $0xCCCCCCCC, %r13\n"
        "mov    $0xDDDDDDDD, %r14\n"
        "mov    $0xEEEEEEEE, %r15"
    );
    for (;;) {
        /* spin forever until another task is ready */
    }
}


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


static void
Scheduler_StartFirstTask(const Scheduler_TaskTableEntry* task)
{
    // __asm(  " push {r0}\n "
    //         " ldr r0, =internal_stackPtr\n"
    //         " mov sp, r0\n"
    //         " pop  {r0}");

    Scheduler_EnableInterrupts();

#if DIAMANT_NUM_CORES > 1
    for (uint32_t core = 1U; core < DIAMANT_NUM_CORES; core++) {
        Scheduler_TaskTableEntry *entry = Scheduler_FindHighestPriorityTaskAvailable(core);
        
        MultiCore_RunTaskOnSecondaryCore(core, Scheduler_SwitchTaskNoSp, entry->stackPtr);
    }
#endif

    Scheduler_SwitchTask(task->stackPtr);
}


extern void Scheduler_SaveStackPointer(void** stackPtr);
void Scheduler_ContextSwitch(void);


void
Scheduler_ContextSwitch(void)
{
    Scheduler_DisableInterrupts();

    Scheduler_SaveCoreRegisters();
    Scheduler_SaveStackPointer(Scheduler_CURRENT_TASK()->taskEntry.stackPtr);

    Scheduler_SwitchToInternalStack();

    Scheduler_CURRENT_TASK()->taskEntry.isRunning = false;
    volatile Scheduler_TaskTableEntry* task = Scheduler_FindHighestPriorityTaskAvailable(MultiCore_GetCoreNumber());

    Scheduler_EnableInterrupts();

    Scheduler_SwitchTask(task->stackPtr);
}


void
Scheduler_UpdateTicks(void)
{
    for (Scheduler_ListEntry* entry = task_table.blockedTasks; entry != NULL;) {
        Scheduler_ListEntry* next = entry->next;
        if ( entry->taskEntry.ticksRemaining > 0U ) {
            entry->taskEntry.ticksRemaining--;
        } else {
            Scheduler_MoveTaskToReadyList(entry);
        }
        entry = next;
    }
}


static void
Scheduler_MoveTaskToBlockedList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &task_table.readyTasks, &task_table.blockedTasks);
}


static void
Scheduler_MoveTaskToReadyList(Scheduler_ListEntry* entry)
{
    Scheduler_MoveTaskToOtherList(entry, &task_table.blockedTasks, &task_table.readyTasks);
}


static void
Scheduler_MoveTaskToOtherList(  Scheduler_ListEntry* entry,
                                Scheduler_ListEntry** removeFrom,
                                Scheduler_ListEntry** addTo)
{
    if (entry->prev != NULL) {
        entry->prev->next = entry->next;
    } else {
        *removeFrom = entry->next;
    }

    if (entry->next != NULL) {
        entry->next->prev = entry->prev;    
    }

    entry->next = *addTo;
    if (*addTo != NULL) {
        (*addTo)->prev = entry;
    }
    entry->prev = NULL;
    *addTo = entry;
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
Scheduler_ListEntry** listsToCheck[] = {
    &task_table.blockedTasks,
    &task_table.readyTasks,
};
    Scheduler_ListEntry* deleteListPtr = NULL;
    Scheduler_ListEntry* taskListEntry = Scheduler_TaskToListEntry(task);

    for (uint32_t i = 0U; i < (sizeof(listsToCheck) / sizeof(listsToCheck[0U])); i++) {
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
    Scheduler_DisableInterrupts();
    criticality_depth++;
}


void
Scheduler_ExitCriticalSection(void)
{
    criticality_depth--;

    if (criticality_depth == 0U) {
        Scheduler_EnableInterrupts();
    }
}



static void Scheduler_TestMoveTaskToOtherList(void);

void Scheduler_RegisterUTests(void)
{
    uTest_RegisterTest(&Scheduler_TestMoveTaskToOtherList);
}



static void Scheduler_TestMoveTaskToOtherList(void)
{
#define LINK(n, p)  n.next = &p; p.prev = &n;

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

    Scheduler_MoveTaskToOtherList(&e2, &tbl.readyTasks, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e2);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == NULL);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e3);
    uTest_Assert(e3.prev == &e1);

    Scheduler_MoveTaskToOtherList(&e3, &tbl.readyTasks, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e3);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == &e3);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e4);
    uTest_Assert(e3.prev == NULL);
    uTest_Assert(e3.next == &e2);

    Scheduler_MoveTaskToOtherList(&e1, &tbl.readyTasks, &tbl.blockedTasks);
    uTest_Assert(tbl.blockedTasks == &e1);
    uTest_Assert(tbl.readyTasks == &e4);
    uTest_Assert(e2.next == NULL);
    uTest_Assert(e2.prev == &e3);
    uTest_Assert(e1.prev == NULL);
    uTest_Assert(e1.next == &e3);
    uTest_Assert(e3.prev == &e1);
    uTest_Assert(e3.next == &e2);
    uTest_Assert(e4.next == &e5);


    Scheduler_MoveTaskToOtherList(&e5, &tbl.readyTasks, &tbl.blockedTasks);
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
}


