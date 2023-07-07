#include <stdlib.h>
#include <stdarg.h>
#include "event.h"
#include "scheduler.h"


enum SubType {
    Task, 
    AsyncHandler
};


union EventSub {
    EventHandler handler;
    struct {
        TaskHandle task;
        void **ctx;
    };
};


/*
 * Tagged union subscriber type
 * either task or handler (func call)
 */
struct EventSubscriber_t {
    enum SubType type;
    union EventSub sub;
    struct EventSubscriber_t *next;
};


struct Event_t {
    const char* name;
    struct EventSubscriber_t *subscribers;
};


static void* (*extMalloc)(size_t);
static void (*extFree)(void*);



static struct EventSubscriber_t* 
Event_ConstructSubscriber(enum SubType type, ...)
{
    va_list va;
    va_start(va, type);
    struct EventSubscriber_t *sub = (struct EventSubscriber_t*)extMalloc(sizeof(struct EventSubscriber_t));

    switch (type)
    {
    case Task:
        sub->sub.task = va_arg(va, TaskHandle);
        sub->sub.ctx = va_arg(va, void**);
        break;
    case AsyncHandler:
        sub->sub.handler = va_arg(va, EventHandler);
        break;
    default:
        break;
    }

    va_end(va);

    sub->next = NULL;

    return sub;
}


static void
Event_AddSubscriber(struct Event_t *ev, struct EventSubscriber_t *newSub)
{ 
    if (!ev->subscribers) {
        ev->subscribers = newSub;

        return;
    }
    
    struct EventSubscriber_t *sub = NULL;
    for (sub = ev->subscribers; sub->next != NULL; sub = sub->next) {
        /* do nothing */
    }
    
    sub->next = newSub;
}


void 
Event_Initialize(void* (*mallocFunc)(size_t), void (*freeFunc)(void*))
{
    extMalloc = mallocFunc;
    extFree = freeFunc;
}


Event* 
Event_Create(const char* name)
{
    struct Event_t *event = (struct Event_t*)extMalloc(sizeof(struct Event_t));

    if (!event) {
        return NULL;
    }

    event->name = name;
    event->subscribers = NULL;

    return (Event*)event;
}


void 
Event_Consume(Event* event)
{
    struct EventSubscriber_t *sub = ((struct Event_t*)event)->subscribers;

    while (sub) {
        struct EventSubscriber_t *next = sub->next;
        sub->next = NULL;
        extFree(sub);
        sub = next;
    }
}


void 
Event_Listen(Event* event, EventHandler handler)
{
    struct Event_t* ev = (struct Event_t*)event;

    struct EventSubscriber_t* newSub = Event_ConstructSubscriber(AsyncHandler, handler);

    Event_AddSubscriber(ev, newSub);
}

void
Scheduler_WakeTask(TaskHandle task);


bool 
Event_Wait(Event* event, void** ctx, uint32_t maxTicksToWait)
{
    TaskHandle task = Scheduler_GetCurrentTask();
    struct Event_t *ev = (struct Event_t*)event;
    struct EventSubscriber_t *newSub = Event_ConstructSubscriber(Task, task, ctx);

    Event_AddSubscriber(ev, newSub);

    return Scheduler_Sleep(maxTicksToWait);
}


void 
Event_Broadcast(const Event* event, void* ctx)
{
    struct EventSubscriber_t *sub = ((struct Event_t*)event)->subscribers;
    
    while (sub) {
        switch (sub->type)
        {
        case Task:
            *sub->sub.ctx = ctx;
            Scheduler_WakeTask(sub->sub.task);
            break;
        case AsyncHandler:
            sub->sub.handler(ctx);
            break;
        default:
            break;
        }
        sub = sub->next;
    }
}

