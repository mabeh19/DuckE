/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_PORT_H
#define DIAMANT_PORT_H



#define Target_SwitchToInternalStack() asm volatile ( \
        " ldr r2, =internal_stackPtr\n" \
        " ldr r2, [r2]\n" \
        " mov sp, r2\n" \
        ::: "r2" \
    );


#define Target_EnableInterrupts() __asm(" cpsie i")
#define Target_DisableInterrupts() __asm(" cpsid i")


#define Target_Yield() \
    *(uint32_t*)0xe000ed04 = (1U << 28U); \
    asm volatile (  \
        "dsb\n"     \
        "isb"       \
    );


void Target_SwitchTask(void* newStack);
void Target_SwitchTaskNoSp(void);
void Target_InitTick(void);
void* Target_SetEntryRegisters(void *stackPtr, void *data, void *entrypoint);
void Target_StartFirstTask(const void* task);




#endif /* DIAMANT_PORT_H */

