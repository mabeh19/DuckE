#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include "scheduler.h"

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
        "mrs    r1, primask\n" \
        "mrs    r2, control\n" \
        "push   {r0-r2}\n" \
    )

#define Scheduler_EnableInterrupts() __asm(" cpsie i")
#define Scheduler_DisableInterrupts() __asm(" cpsid i")

#define Scheduler_GetCurrentTask() (__task_table__.entries[__task_table__.currentTaskIndex])


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
    Scheduler_Task* task;
    u32 ticksRemaining;
    u32 registers[16];
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


void Scheduler_UpdateTicks(void);
void Scheduler_ContextSwitch(void);
static void Scheduler_StartFirstTask(void);
static void Scheduler_IdleTask(void* data);
static Scheduler_TaskTable __task_table__;
static void* __attribute__((used)) __internal_stack__;      // `used` attribute prevents linker error
static void* __attribute__((used)) __internal_stackPtr__;


void Scheduler_Initialize(Scheduler_Malloc _malloc, Scheduler_Realloc _realloc, Scheduler_Free _free)
{
const u32 internalStackSize = 4096;
    extMalloc = _malloc;
    extFree = _free;
    extRealloc = _realloc;

    __task_table__.numEntries = 0;
    __task_table__.entries = NULL;
    __task_table__.currentTaskIndex = 0;

    __internal_stack__ = extMalloc(internalStackSize);
    __internal_stackPtr__ = __internal_stack__ + internalStackSize - 4;

    Scheduler_CreateTask("Idle Task", 4096, 0, Scheduler_IdleTask, NULL);
}

void Scheduler_Start(void)
{
    printf("Starting tick...\n");
    Scheduler_InitTick();
    printf("Running first task...\n");
    Scheduler_EnableInterrupts();
    Scheduler_StartFirstTask();
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
        goto taskAllocError;
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
            memcpy(entry->stackPtr - 4, data, sizeof(data));
            entry->stackPtr -= 16 * sizeof(uint32_t);
            entry->ticksRemaining = 0;
        } else {
            __task_table__.entries = extRealloc(newTable, (__task_table__.numEntries) * sizeof(Scheduler_TaskTableEntry));
            goto tableAllocError;
        }
    } else {
        goto taskAllocError;
    }

    return (TaskHandle)newTask;

tableAllocError:
    extFree(newTask->stack);

taskAllocError:
    extFree(newTask);

    printf("Failed to allocate %s\n", name);

    return NULL;
}


void Scheduler_Sleep(u32 ticks)
{
    Scheduler_TaskTableEntry* currentTask = Scheduler_GetCurrentTask();
    currentTask->ticksRemaining = ticks;
    Scheduler_ContextSwitch();
}

static void Scheduler_IdleTask(void* data)
{
    
    for (;;) { printf("idle!\n"); }
}

extern void Scheduler_SaveStackPointer(void** stackPtr);

static Scheduler_TaskTableEntry* Scheduler_FindHighestPriorityTaskAvailable(void)
{
bool switchTask = false;
u32 oldTaskIndex = __task_table__.currentTaskIndex;
Scheduler_TaskTableEntry* currentTask = Scheduler_GetCurrentTask();
u8 newTaskPriority = 0;
Scheduler_TaskTableEntry* highestPriorityTask = currentTask;


    for (u32 i = 0U; i < __task_table__.numEntries; i++) {
        Scheduler_TaskTableEntry* entry = __task_table__.entries[i];
        
        if ( entry->ticksRemaining == 0U && 
            (entry->task->priority + 1) > newTaskPriority ) {
            
            newTaskPriority = entry->task->priority + 1;
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
    __asm(  " push {r0}\n "
            " ldr r0, =__internal_stackPtr__\n"
            " mov sp, r0\n"
            " pop  {r0}");

    __auto_type newTask = Scheduler_FindHighestPriorityTaskAvailable();
    
    Scheduler_DisableInterrupts();
    printf("Starting first task %s\n", newTask->task->name);
    Scheduler_EnableInterrupts();

    Scheduler_SwitchTask(newTask->stackPtr);
}


void Scheduler_ContextSwitch(void) __attribute__((naked));

void Scheduler_ContextSwitch(void)
{
    Scheduler_DisableInterrupts();
    Scheduler_SaveCoreRegisters();
    Scheduler_SaveStackPointer(&Scheduler_GetCurrentTask()->stackPtr);
    Scheduler_SwitchToInternalStack();
    Scheduler_UpdateTicks();

    Scheduler_TaskTableEntry* newTask = Scheduler_FindHighestPriorityTaskAvailable();


    Scheduler_EnableInterrupts();

    Scheduler_SwitchTask(newTask->stackPtr);
}


void Scheduler_UpdateTicks(void)
{
    for (u32 i = 0U; i < __task_table__.numEntries; i++) {
        Scheduler_TaskTableEntry* entry = __task_table__.entries[i];

        printf("%s: %d\n", entry->task->name, entry->ticksRemaining);

        if ( entry->ticksRemaining > 0U ) {
            entry->ticksRemaining--;
        }
    }
}


void print(void)
{
    printf("tick\n");
}
