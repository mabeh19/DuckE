/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef INC_DUCKE_SEMPH_H
#define INC_DUCKE_SEMPH_H

#include <stdbool.h>
#include <stdint.h>


typedef void* DuckE_Semaphore;

#ifdef __cplusplus
extern "C" {
#endif

void DuckE_Semaphore_Initialize(void* (*mallocFunc)(size_t), void (*freeFunc)(void*));
DuckE_Semaphore DuckE_Semaphore_Create(uint32_t startValue, uint32_t maxValue);
DuckE_Semaphore DuckE_Semaphore_CreateBinary(void);
bool DuckE_Semaphore_Take(DuckE_Semaphore semph, uint32_t ticksToWait);
void DuckE_Semaphore_Give(DuckE_Semaphore semph);

#ifdef __cplusplus
}
#endif

#endif /* INC_DUCKE_SEMPH_H */
