/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include "semph.h"
#include "../event/event.h"
#include "../scheduler/scheduler.h"


struct Semph_t {
    volatile uint32_t current;
    uint32_t max;
    Event giveEvent;
    Event takeEvent;
};


void
Semaphore_Create(Semaphore *semaphore, uint32_t maxValue, uint32_t startValue)
{
    if (!semaphore) {
        return;
    }

    struct Semph_t *semph = (struct Semph_t*)semaphore;

    Event_CreateTyped(&semph->giveEvent, "semphGive", EventType_AwakeOne);
    Event_CreateTyped(&semph->takeEvent, "semphTake", EventType_AwakeOne);
    semph->max = maxValue;
    semph->current = startValue;
}


void
Semaphore_CreateBinary(Semaphore *semaphore)
{
    Semaphore_Create(semaphore, 1U, 1U);
}


bool
Semaphore_Take(Semaphore* semph, SemaphoreWaiter *waiter, uint32_t ticksToWait)
{
    bool taken = false;
    struct Semph_t *sem = (struct Semph_t*)semph;
    
    if (sem->current) {
        Scheduler_EnterCriticalSection();
        sem->current--;
        taken = true;
        Event_Broadcast(&sem->takeEvent, sem);
        Scheduler_ExitCriticalSection();
    } else {
        taken = Event_Wait(&sem->giveEvent, waiter, NULL, ticksToWait);
        if (taken) {
            sem->current--;
        }
    }

    return taken;
}


bool
Semaphore_Give(Semaphore* semph, SemaphoreWaiter *waiter, uint32_t ticksToWait)
{
    struct Semph_t *sem = (struct Semph_t*)semph;

    if (sem->current < sem->max) {
        Scheduler_EnterCriticalSection();
        sem->current++;
        Scheduler_ExitCriticalSection();
    } else {
        if (!Event_Wait(&sem->takeEvent, waiter, NULL, ticksToWait)) {
            return false;
        } else {
            sem->current++;
        }
    }

    Event_Broadcast(&sem->giveEvent, sem);

    return true;
}

