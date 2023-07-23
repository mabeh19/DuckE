/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#ifndef DIAMANT_MULTICORE_H
#define DIAMANT_MULTICORE_H


#include <stdint.h>


void MultiCore_RunTaskOnSecondaryCore(const uint32_t core, const void *task, void *stack);
uint32_t MultiCore_GetCoreNumber(void);


#endif /* DIAMANT_MULTICORE_H */