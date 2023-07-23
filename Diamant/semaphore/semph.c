/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include "semph.h"
#include "../event/event.h"


struct Semph_t {
    volatile uint32_t current;
    uint32_t max;
    Event giveEvent;
};


void
Semaphore_Create(Semaphore *semaphore, uint32_t maxValue, uint32_t startValue)
{
    if (!semaphore) {
        return;
    }

    struct Semph_t *semph = (struct Semph_t*)semaphore;

    Event_CreateTyped(&semph->giveEvent, "semph", EventType_AwakeOne);
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
        sem->current--;
        taken = true;
    } else {
        taken = Event_Wait(&sem->giveEvent, waiter, NULL, ticksToWait);
    }

    return taken;
}


void
Semaphore_Give(Semaphore* semph)
{
    struct Semph_t *sem = (struct Semph_t*)semph;

    if (sem->current < sem->max) {
        sem->current++;
    }

    Event_Broadcast(&sem->giveEvent, sem);
}


