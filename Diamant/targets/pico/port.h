/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_PORT_H
#define DIAMANT_PORT_H


#define Scheduler_SwitchToInternalStack() __asm( \
        " ldr r0, =internal_stackPtr\n" \
        " ldr r0, [r0]\n" \
        " mov sp, r0\n" \
    );

#define Scheduler_SaveCoreRegisters() __asm( \
        "push   {lr}\n"\
        "push   {r0-r7}\n" \
        "mov    r0, r8\n" \
        "mov    r1, r9\n" \
        "mov    r2, r10\n" \
        "mov    r3, r11\n" \
        "mov    r4, r12\n" \
        "push   {r0-r4}\n" \
        "mrs    r0, apsr\n" \
        "mrs    r1, control\n" \
        "push   {r0-r1}\n" \
    )

#define Scheduler_EnableInterrupts() __asm(" cpsie i")
#define Scheduler_DisableInterrupts() __asm(" cpsid i")


#define DIAMANT_PORT_NUM_REGS   (16U)
#define DIAMANT_PORT_REG_SIZE   (4U)

#define Scheduler_BackupR0()    __asm(" mov  r1, r0\n")
#define Scheduler_RestoreR0()   __asm(" mov  r0, r1\n")


#endif /* DIAMANT_PORT_H */

