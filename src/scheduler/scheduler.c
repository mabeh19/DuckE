#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include "scheduler.h"


#define Scheduler_SaveCoreRegisters() __asm( \
        "push   {lr}\n"\
        "push   {r0-r7}\n" \
        "mov    r0, r8\n" \
        "mov    r1, r9\n" \
        "mov    r2, r10\n" \
        "mov    r3, r11\n" \
        "mov    r4, r12\n" \
        "push   {r0-r4}\n" \
    )


extern void Scheduler_SwitchTask(void* newStack);
extern void Scheduler_InitTick(void);


typedef struct {
    char name[20];
    void* entryPoint;
    u8 priority;
    void* stack;
} Scheduler_Task;

typedef struct {
    u32 registers[16];
    void* stackPtr;
    Scheduler_Task* task;
    u32 ticksRemaining;
} Scheduler_TaskTableEntry;

typedef struct {
    u32 currentTaskIndex;
    u32 numEntries;
    Scheduler_TaskTableEntry** entries;
} Scheduler_TaskTable;


extern void blink(int rate);

static Scheduler_Malloc extMalloc;
static Scheduler_Free extFree;
static Scheduler_Realloc extRealloc;


void Scheduler_ContextSwitch(void);
static Scheduler_TaskTableEntry* Scheduler_GetCurrentTask(void);
static void Scheduler_StartFirstTask(void);
static void Scheduler_IdleTask(void* data);
static Scheduler_TaskTable __task_table__;
static void* __attribute__((used)) __internal_stack__;      // `used` attribute prevents linker error
static void* __attribute__((used)) __internal_stackPtr__;


void Scheduler_Initialize(Scheduler_Malloc _malloc, Scheduler_Realloc _realloc, Scheduler_Free _free)
{
    extMalloc = _malloc;
    extFree = _free;
    extRealloc = _realloc;

    __task_table__.numEntries = 0;
    __task_table__.entries = NULL;
    __task_table__.currentTaskIndex = 0;

    __internal_stack__ = extMalloc(512);
    __internal_stackPtr__ = __internal_stack__ + 512 - 4;

    Scheduler_CreateTask("Idle Task", 128, 0, Scheduler_IdleTask, NULL);
}

void Scheduler_Start(void)
{

    Scheduler_InitTick();
    Scheduler_StartFirstTask();
    //Scheduler_ContextSwitch();
    for ( ;; ) {
        printf("Stuck in Scheduler_Start\n");
    }
}


TaskHandle Scheduler_CreateTask(const char *name, u32 stackSize, u8 priority, Scheduler_TaskFunc task, void *data) 
{
    Scheduler_Task* newTask = extMalloc(sizeof(Scheduler_Task));

    if ( newTask == NULL ) {
        return NULL;
    }

    strncpy(newTask->name, name, sizeof(newTask->name));
    newTask->entryPoint = task;
    newTask->stack = extMalloc(stackSize);
    newTask->priority = priority;

    //blink(100);

    if ( newTask->stack == NULL ) {
        extFree(newTask);
        return NULL;
    }
   
    void* newTable = NULL;

    if( (newTable = extRealloc(__task_table__.entries, (__task_table__.numEntries + 1) * sizeof(Scheduler_TaskTableEntry))) != NULL ) {
        __task_table__.entries = newTable;

        __task_table__.entries[__task_table__.numEntries] = extMalloc(sizeof(Scheduler_TaskTableEntry));
        Scheduler_TaskTableEntry* entry = __task_table__.entries[__task_table__.numEntries];

        
        if ( entry ) {
            entry->task = newTask;
            memset(entry->registers, 0x00, sizeof(entry->registers));
            __task_table__.numEntries++;
            entry->stackPtr = newTask->stack + stackSize - 4; // set stack pointer to end of allocated area

            memcpy(entry->stackPtr, &newTask->entryPoint, sizeof(newTask->entryPoint));
            entry->stackPtr -= 13 * sizeof(uint32_t);
        } else {
            __task_table__.entries = extRealloc(newTable, (__task_table__.numEntries) * sizeof(Scheduler_TaskTableEntry));
            extFree(newTask->stack);
            extFree(newTask);
        }
    } else {
        extFree(newTask->stack);
        extFree(newTask);
    }

    return (TaskHandle)newTask;
}


void Scheduler_Sleep(u32 ticks)
{
    Scheduler_TaskTableEntry* currentTask = Scheduler_GetCurrentTask();
    currentTask->ticksRemaining = ticks;
    Scheduler_ContextSwitch();
}

static void Scheduler_IdleTask(void* data)
{
    
    for (;;) {}
}

extern void Scheduler_SaveStackPointer(void** stackPtr);

static Scheduler_TaskTableEntry* Scheduler_FindHighestPriorityTaskAvailable(void)
{
bool switchTask = false;
u32 oldTaskIndex = __task_table__.currentTaskIndex;
Scheduler_TaskTableEntry* currentTask = Scheduler_GetCurrentTask();
i32 newTaskPriority = -1;
Scheduler_TaskTableEntry* highestPriorityTask = currentTask;


    for (uint32_t i = 0U; i < __task_table__.numEntries; i++) {
        Scheduler_TaskTableEntry* entry = __task_table__.entries[i];

        if ( entry->ticksRemaining == 0U && 
            entry->task->priority > newTaskPriority ) {
            
            newTaskPriority = entry->task->priority;
            __task_table__.currentTaskIndex = i;
            switchTask = true;
        }
    }

    if ( switchTask ) {
        highestPriorityTask = __task_table__.entries[__task_table__.currentTaskIndex];
    }

    return highestPriorityTask;
}

static void Scheduler_StartFirstTask(void)
{
    //__asm(  " push {r0}\n"
    //        " ldr r0, =__internal_stackPtr__\n"
    //        " mov sp, r0");
    
    void* newTaskStackPtr = Scheduler_FindHighestPriorityTaskAvailable()->stackPtr;

    Scheduler_SwitchTask(newTaskStackPtr);
}


void Scheduler_ContextSwitch(void) __attribute__((naked));

void Scheduler_ContextSwitch(void)
{
  
    Scheduler_SaveCoreRegisters();
    Scheduler_SaveStackPointer(&Scheduler_GetCurrentTask()->stackPtr);

    __asm(" ldr r0, =__internal_stackPtr__\n"
          " ldr r0, [r0]\n"
          " mov sp, r0");
   

    void* newTaskStackPtr = Scheduler_FindHighestPriorityTaskAvailable()->stackPtr;

    Scheduler_SwitchTask(newTaskStackPtr);
}

void Scheduler_UpdateTicks(void)
{
    for (uint32_t i = 0U; i < __task_table__.numEntries; i++) {
        Scheduler_TaskTableEntry* entry = __task_table__.entries[i];

        if ( entry->ticksRemaining > 0 ) {
            entry->ticksRemaining--;
        }
    }
}



static Scheduler_TaskTableEntry* Scheduler_GetCurrentTask(void)
{
    return __task_table__.entries[__task_table__.currentTaskIndex];
}
