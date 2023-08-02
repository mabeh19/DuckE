/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_SEMPH_H
#define DIAMANT_SEMPH_H

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

#include "../event/event.h"


typedef EventListener SemaphoreWaiter;

typedef struct {
    uint32_t dummy1;
    uint32_t dummy2;
    Event dummy3[2];
} Semaphore;

#ifdef __cplusplus
extern "C" {
#endif


void Semaphore_Create(Semaphore *semaphore, uint32_t maxValue, uint32_t startValue);
void Semaphore_CreateBinary(Semaphore *semaphore);
bool Semaphore_Take(Semaphore* semph, SemaphoreWaiter *waiter, uint32_t ticksToWait);
bool Semaphore_Give(Semaphore* semph, SemaphoreWaiter *waiter, uint32_t ticksToWait);


#ifdef __cplusplus
}
#endif

#endif /* INC_SEMPH_H */
