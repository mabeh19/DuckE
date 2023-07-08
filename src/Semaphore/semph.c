/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#include "ducke_semph.h"
#include "ducke_event.h"


struct DuckE_Semph_t {
    volatile uint32_t current;
    uint32_t max;
    DuckE_Event *giveEvent;
};


static void* (*extMalloc)(size_t);
static void (*extFree)(void*);


static void DuckE_Semaphore_GiveEventHandler(const DuckE_Event *event, void* ctx)
{
    struct DuckE_Semph_t *sem = (struct DuckE_Semph_t*)ctx;
    if (sem->current < sem->max) {
        sem->current++;
    }
}


void 
DuckE_Semaphore_Initialize(void* (*mallocFunc)(size_t), void (*freeFunc)(void*))
{
    extMalloc = mallocFunc;
    extFree = freeFunc;
}


DuckE_Semaphore
DuckE_Semaphore_Create(uint32_t startValue, uint32_t maxValue)
{
    struct DuckE_Semph_t *semph = (struct DuckE_Semph_t*)extMalloc(sizeof(struct DuckE_Semph_t));

    semph->giveEvent = DuckE_Event_Create("semph");
    semph->max = maxValue;
    semph->current = startValue;

    DuckE_Event_Listen(semph->giveEvent, DuckE_Semaphore_GiveEventHandler);

    return (DuckE_Semaphore)semph;
}


DuckE_Semaphore
DuckE_Semaphore_CreateBinary(void)
{
    return DuckE_Semaphore_Create(1U, 1U);
}


bool
DuckE_Semaphore_Take(DuckE_Semaphore semph, uint32_t ticksToWait)
{
    bool taken = false;
    struct DuckE_Semph_t *sem = (struct DuckE_Semph_t*)semph;
    
    if (sem->current) {
        sem->current--;
        taken = true;
    } else {
        taken = DuckE_Event_Wait(sem->giveEvent, NULL, ticksToWait);
    }

    return taken;
}


void
DuckE_Semaphore_Give(DuckE_Semaphore semph)
{
    struct DuckE_Semph_t *sem = (struct DuckE_Semph_t*)semph;

    DuckE_Event_Broadcast(sem->giveEvent, sem);
}


