@
@ Copyright (c) 2023, Mathias Ingeman Behrens
@ All rights reserved.
@
@ This source code is licensed under the BSD-style license found in the
@ LICENSE file in the root directory of this source tree.
@

        @.syntax unified
        .thumb


        .global Scheduler_SetEntryRegisters
        .global Scheduler_SaveCoreRegisters
        .global Scheduler_SwitchTask
        .global Scheduler_SaveStackPointer
        .global Scheduler_SwitchTaskNoSp
        .global isr_systick 

@ Scheduler_SetEntryRegisters
@ r0: void *stackPtr
@ r1: void *ctx
        .thumb_func
        .code   16
        .align  2
Scheduler_SetEntryRegisters:
        sub     r0, #32
        str     r1, [r0]
        bx      lr


@.macro Scheduler_SaveCoreRegisters
@        push    {lr}            ; we set PC to lr 
@        push    {r0-r7}
@          mov     r0, r8 
@          mov     r1, r9
@          mov     r2, r10
@          mov     r3, r11
@          mov     r4, r12
@        push    {r0-r4}
@        push    {lr}
@.endm

        .thumb_func
        .code 16
        .align 2


@ Scheduler_SwitchTask()
@ r0: void* newStackPtr
Scheduler_SwitchTask:
        mov     sp, r0

        .thumb_func
        .code 16
        .align 2
Scheduler_SwitchTaskNoSp:
        @ Restore status registers 
        pop     {r0-r1}
        msr     apsr, r0 
        @msr     primask, r1 
        msr     control, r1
       
        @ Restore r8-r12
        pop     {r0-r4}
        mov     r8, r0
        mov     r9, r1
        mov     r10, r2
        mov     r11, r3
        mov     r12, r4

        @ Restore r0-r7
        pop     {r0-r7}

        @ Return
        pop     {pc}


        .thumb_func
        .code 16
        .align 2
@ r0: void** stackPtrPtr
Scheduler_SaveStackPointer:
        mov     r1, sp
        str     r1, [r0]
        bx      lr



        .type isr_systick,%function
        .thumb_func
        .code 16
        .align 2
isr_systick:
@SysTick_Handler:
        @ Clear SysTick int
        push    {r0-r7}
        push    {lr}

        bl      Scheduler_UpdateTicks

        ldr     r1, =syst_CSR
        ldr     r1, [r1]
        ldr     r1, [r1]

        pop     {r0}
        mov     lr, r0
        pop     {r0-r7}

        b       Scheduler_ContextSwitch

        .sect ".data"
syst_CSR:       .word 0xe000e010
