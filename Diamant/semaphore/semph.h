/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef INC_DIAMANT_SEMPH_H
#define INC_DIAMANT_SEMPH_H

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

typedef void* Semaphore;

#ifdef __cplusplus
extern "C" {
#endif

Semaphore Semaphore_Create(uint32_t startValue, uint32_t maxValue);
Semaphore Semaphore_CreateBinary(void);
bool Semaphore_Take(Semaphore semph, uint32_t ticksToWait);
void Semaphore_Give(Semaphore semph);

#ifdef __cplusplus
}
#endif

#endif /* INC_SEMPH_H */
