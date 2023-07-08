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
#include "../Scheduler/scheduler.h"


enum ListenerType {
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
struct EventListener_t {
    enum ListenerType type;
    union EventSub sub;
    struct EventListener_t *next;
};


struct Event_t {
    const char* name;
    struct EventListener_t *listeners;
};


static void* (*extMalloc)(size_t);
static void (*extFree)(void*);



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
        break;
    default:
        break;
    }

    va_end(va);

    sub->next = NULL;

    return sub;
}


static void
Event_AddListener(struct Event_t *ev, struct EventListener_t *newListener)
{ 
    if (!ev->listeners) {
        ev->listeners = newListener;

        return;
    }
    
    struct EventListener_t *sub = NULL;
    for (sub = ev->listeners; sub->next != NULL; sub = sub->next) {
        /* do nothing */
    }
    
    sub->next = newListener;
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
    event->listeners = NULL;

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
Event_Listen(const Event* event, EventHandler handler)
{
    struct Event_t* ev = (struct Event_t*)event;

    struct EventListener_t* newListener = Event_ConstructListener(AsyncHandler, handler);

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

    return Scheduler_Sleep(maxTicksToWait);
}


void
Event_Broadcast(const Event* event, void* ctx)
{
    struct EventListener_t *sub = ((struct Event_t*)event)->listeners;
    
    while (sub) {
        switch (sub->type)
        {
        case Task:
            if (sub->sub.ctx) {
                *sub->sub.ctx = ctx;
            }
            Scheduler_WakeTask(sub->sub.task);
            break;
        case AsyncHandler:
            sub->sub.handler(event, ctx);
            break;
        default:
            break;
        }
        sub = sub->next;
    }
}

