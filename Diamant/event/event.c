/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#include <stdlib.h>
#include <stdarg.h>
#include "event.h"
#include "../scheduler/scheduler.h"


enum ListenerType {
    Task, 
    AsyncHandler
};


union EventSub {
    struct {
        EventHandler handler;
        uint8_t priority;
    };
    struct {
        TaskHandle task;
        void **ctx;
    };
};


/*
 * Tagged union subscriber type
 * either task or handler (func call)
 */
struct EventListener_t {
    enum ListenerType type;
    union EventSub sub;
    struct EventListener_t *next;
};


struct Event_t {
    const char* name;
    EventType type;
    struct EventListener_t *listeners;
};


extern void *extMalloc(size_t);
extern void extFree(void*);


static void Event_BroadcastToListener(const Event *event, struct EventListener_t *listener, void *ctx);
static uint8_t Event_ListenerGetPriority(struct EventListener_t *listener);
static void Event_RemoveListener(struct Event_t* event, struct EventListener_t *listener);

static struct EventListener_t*
Event_ConstructListener(enum ListenerType type, ...)
{
    va_list va;
    va_start(va, type);
    struct EventListener_t *sub = (struct EventListener_t*)extMalloc(sizeof(struct EventListener_t));

    switch (type)
    {
    case Task:
        sub->sub.task = va_arg(va, TaskHandle);
        sub->sub.ctx = va_arg(va, void**);
        break;
    case AsyncHandler:
        sub->sub.handler = va_arg(va, EventHandler);
        sub->sub.priority = va_arg(va, int);
        break;
    default:
        break;
    }

    va_end(va);

    sub->next = NULL;
    sub->type = type;

    return sub;
}


/*
 *  Event uses a priority queue.
 *  This is not relevant for AwakeAll event types,
 *  but very important for AwakeOne event types.
 */
static void
Event_AddListener(struct Event_t *ev, struct EventListener_t *newListener)
{
    uint8_t prio = Event_ListenerGetPriority(newListener);

    if (!ev->listeners || Event_ListenerGetPriority(ev->listeners) < prio) {
        newListener->next = ev->listeners;
        ev->listeners = newListener;

        return;
    }
    
    
    struct EventListener_t *sub = NULL;
    for (sub = ev->listeners; Event_ListenerGetPriority(sub) > prio && sub->next != NULL; sub = sub->next) {
        /* do nothing */
    }
    
    sub->next = newListener;
}


static void
Event_RemoveListener(struct Event_t* event, struct EventListener_t *listener)
{
    struct EventListener_t **l = &event->listeners;
    struct EventListener_t *prev = NULL;

    while (*l) {
        if (*l == listener) {
            if (prev) {
                prev->next = (*l)->next;
            } else {
                *l = (*l)->next;
            }
            extFree(*l);

            break;
        }

        prev = *l;
    }
}


Event*
Event_Create(const char* name)
{
    struct Event_t *event = (struct Event_t*)extMalloc(sizeof(struct Event_t));

    if (!event) {
        return NULL;
    }

    event->name = name;
    event->listeners = NULL;
    event->type = EventType_AwakeAll;

    return (Event*)event;
}


Event* Event_CreateTyped(const char* name, EventType type)
{
    struct Event_t *event = (struct Event_t*)extMalloc(sizeof(struct Event_t));

    if (!event) {
        return NULL;
    }

    event->name = name;
    event->listeners = NULL;
    event->type = EventType_AwakeOne;

    return (Event*)event;
}


void
Event_Consume(Event* event)
{
    struct EventListener_t *sub = ((struct Event_t*)event)->listeners;

    while (sub) {
        struct EventListener_t *next = sub->next;
        sub->next = NULL;
        extFree(sub);
        sub = next;
    }
}


void
Event_Listen(const Event* event, uint8_t priority, EventHandler handler)
{
    struct Event_t* ev = (struct Event_t*)event;

    struct EventListener_t* newListener = Event_ConstructListener(AsyncHandler, handler, priority);

    Event_AddListener(ev, newListener);
}

void
Scheduler_WakeTask(TaskHandle task);


bool
Event_Wait(Event* event, void** ctx, uint32_t maxTicksToWait)
{
    TaskHandle task = Scheduler_GetCurrentTask();
    struct Event_t *ev = (struct Event_t*)event;
    struct EventListener_t *newListener = Event_ConstructListener(Task, task, ctx);

    Event_AddListener(ev, newListener);

    bool success = Scheduler_Sleep(maxTicksToWait);

    Event_RemoveListener(ev, newListener);

    return success;
}


void
Event_Broadcast(const Event* event, void* ctx)
{
    struct Event_t *ev = (struct Event_t*)event;
    struct EventListener_t *sub = ev->listeners;
    
    if (!sub) {
        return;
    }

    switch (ev->type)
    {
    case EventType_AwakeAll:
        while (sub) {
            Event_BroadcastToListener(event, sub, ctx);
            sub = sub->next;
        }
        break;
    case EventType_AwakeOne:
        Event_BroadcastToListener(event, sub, ctx);
        break;
    default:
        break;
    }
    
}


static void
Event_BroadcastToListener(const Event *event, struct EventListener_t *listener, void *ctx)
{
    switch (listener->type)
    {
    case Task:
        if (listener->sub.ctx) {
            *listener->sub.ctx = ctx;
        }
        Scheduler_WakeTask(listener->sub.task);
        break;
    case AsyncHandler:
        listener->sub.handler(event, ctx);
        break;
    default:
        break;
    }
}

static uint8_t Event_ListenerGetPriority(struct EventListener_t *listener)
{
    uint8_t priority = 0u;

    switch (listener->type)
    {
    case Task:
        priority = Scheduler_TaskGetPriority(listener->sub.task);
        break;
    case AsyncHandler:
        priority = listener->sub.priority;
        break;
    default:
        break;
    }

    return priority;
}

