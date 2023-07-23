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
    Event *giveEvent;
};


extern void *extMalloc(size_t);
extern void extFree(void*);



Semaphore*
Semaphore_Create(uint32_t maxValue, uint32_t startValue)
{
    struct Semph_t *semph = (struct Semph_t*)extMalloc(sizeof(struct Semph_t));

    semph->giveEvent = Event_CreateTyped("semph", EventType_AwakeOne);
    semph->max = maxValue;
    semph->current = startValue;

    return (Semaphore*)semph;
}


Semaphore*
Semaphore_CreateBinary(void)
{
    return Semaphore_Create(1U, 1U);
}


bool
Semaphore_Take(Semaphore* semph, uint32_t ticksToWait)
{
    bool taken = false;
    struct Semph_t *sem = (struct Semph_t*)semph;
    
    if (sem->current) {
        sem->current--;
        taken = true;
    } else {
        taken = Event_Wait(sem->giveEvent, NULL, ticksToWait);
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

    Event_Broadcast(sem->giveEvent, sem);
}


