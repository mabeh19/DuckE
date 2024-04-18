/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_PORT_H
#define DIAMANT_PORT_H

#include <stdint.h>


#include "../Diamant_Config.h"

#ifdef __cplusplus
extern "C" {
#endif

void Target_SwitchTask(void* newStack);
void Target_SwitchTaskNoSp(void);
void Target_InitTick(void);
void* Target_SetEntryRegisters(void *stackPtr, void *data, void *entrypoint);
void Target_StartFirstTask(const void* task);
void Target_EnableInterrupts(void);
void Target_DisableInterrupts(void);
void Target_Yield(void);


#if DIAMANT_NUM_CORES > 1U
void MultiCore_RunTaskOnSecondaryCore(const uint32_t core, const void *task, void *stack);
uint32_t MultiCore_GetCoreNumber(void);
#else
#define MultiCore_GetCoreNumber()	((uint32_t)0U)
#endif

#ifdef __cplusplus
}
#endif

#endif /* DIAMANT_PORT_H */

