@
@ Copyright (c) 2023, Mathias Ingeman Behrens
@ All rights reserved.
@
@ This source code is licensed under the BSD-style license found in the
@ LICENSE file in the root directory of this source tree.
@

        .syntax unified
        .cpu cortex-m4
        .thumb
        .text

@
@ cortex-m0+ exceptions/interrupts stores the following
@ on the stack
@ r0-r3, r12, lr, pc, xPSR
@
@



        .global Target_SetEntryRegisters
        .global Target_SaveCoreRegisters
        .global Target_SwitchTask
        .global Target_SaveStackPointer
        .global Target_SwitchTaskNoSp
        .global Target_InInterruptContext
        .global Target_StartFirstTask
        .global Target_EnableInterrupts
        .global Target_DisableInterrupts
        .global SysTick_Handler
        .global SVCall_Handler
        .global PendSV_Handler


@---------------------------------------------------
@ Target_SetEntryRegisters
@ r0: void *stackPtr
@ r1: void *ctx
@ r2: void *entrypoint
        .type Target_SetEntryRegisters,%function
Target_SetEntryRegisters:
        subs    r0, #28
        str     r1, [r0]                @ argument
        movs    r1, #0
        str     r1, [r0, #20]           @ LR
        str     r2, [r0, #24]           @ PC
        mov     r1, 0x01000000
        str     r1, [r0, #28]           @ xPSR
        subs    r0, #32                 @ setup stack stack pointer for task start
        bx      lr


@---------------------------------------------------
@ Target_StartFirstTask
@ r0: first task
        .type Target_StartFirstTask, %function
Target_StartFirstTask:
        ldr     r1, [r0]        @ get stack pointer
        adds    r1, #32
        msr     psp, r1
        movs    r3, #2          @ switch to psp stack 
        msr     control, r3
        isb
        pop     {r0-r6}         @ lr is in r5, return address is in r6 
        mov     lr, r5
        pop     {r2}            @ discard xpsr
        cpsie   i               @ enable interrupts
        bx      r6



@---------------------------------------------------
        .type Target_SaveStackPointer,%function
@ r0: void** stackPtrPtr
Target_SaveStackPointer:
        mov     r1, sp
        str     r1, [r0]
        bx      lr




@---------------------------------------------------

        .type SysTick_Handler,%function
SysTick_Handler:
        mrs     r3, primask
        cpsid   i

        push    {r3, r4}
        push    {lr}
        
        bl      HAL_IncTick
        bl      Scheduler_UpdateTicks
        cmp     r0, #0
        pop     {r0}
        mov     lr, r0
        beq     systick.return

        @ Set PendSV interrupt
        ldr     r0, =ICSR_REG
        movs    r1, 0x1
        ldr     r0, [r0]
        lsls    r1, r1, #28
        str     r1, [r0]

systick.return:
        pop     {r3, r4}
        msr     primask, r3
        bx      lr

        .align 4
ICSR_REG:   .word   0xe000ed04


@---------------------------------------------------
@ bool Target_InInterruptContext(void)
@ return: true if in ISR or exception
        .type Target_InInterruptContext, %function
Target_InInterruptContext:
        movs    r1, #0x0F
        mrs     r0, xpsr
        ands    r0, r1
        subs    r1, r0, #1
        sbcs    r0, r1
        bx      lr



@---------------------------------------------------
@       PendSV_Handler
@ switches task
        .type PendSV_Handler, %function
PendSV_Handler:
        cpsid   i
        @ Save stack pointer
        push    {lr}
        bl      Scheduler_GetCurrentTask
        mov     r1, r0
        //ldr     r0, [r0]
        pop     {r0}
        mov     lr, r0
        sub     r1, #4
        mrs     r0, psp
        sub     r0, #32
        str     r0, [r1]

        @ Save registers
        stmia   r0!, {r4-r7}
        mov     r4, r8
        mov     r5, r9 
        mov     r6, r10
        mov     r7, r11
        stmia   r0!, {r4-r7}

        @ Save FPU registers if needed
        ldrb    r2, [r1, #(4 + 20 + 4 + 4 + 4 + 4)]
        cmp     r2, #0
        beq     PendSV_Handler.SwitchTask
        sub     r0, #32
        vstmdb  r0!, {s0-s31}


PendSV_Handler.SwitchTask:

        bl      Scheduler_ContextSwitch

        @ fall through to SwitchTask


@ Target_SwitchTask()
@ r0: void* newStackPtr
        .type Target_SwitchTask,%function
Target_SwitchTask:
        bl      Scheduler_GetCurrentTask
        subs    r0, #4          @ get stack pointer
        ldr     r1, [r0]


        .type Target_SwitchTaskNoSp,%function
Target_SwitchTaskNoSp:

        @ Restore FPU registers if needed
        ldrb    r2, [r0, #(4 + 20 + 4 + 4 + 4 + 4)]
        cmp     r2, #0
        beq     Target_SwitchTaskNoSp.RestoreCoreRegisters
        vldmdb  r1!, {s0-s31}
        add     r1, #(32 * 4)


Target_SwitchTaskNoSp.RestoreCoreRegisters:
        @ Restore registers
        adds    r1, #16     @ move to high registers
        ldmia   r1!, {r4-r7}
        mov     r8, r4
        mov     r9, r5
        mov     r10, r6
        mov     r11, r7

        msr     psp, r1         @ save new top of stack
        subs    r1, #32         @ grab low registers
        ldmia   r1!, {r4-r7}


        @ Return
        mvn     r0, #2
        cpsie   i
        bx      r0



@---------------------------------------------------
@       SV Handler
@ funcs:
@       | Function                      | r12 |
@---------------------------------------------------
@       | void enable_ints(void)        |   0 |
@       | void disable_ints(void)       |   1 |          
@       |                               |     |          
@---------------------------------------------------
        .type SVC_Handler, %function
SVC_Handler:
@        sub     sp, #8
@        str     r3, [sp]
@        mov     r3, r12
@        str     r3, [sp, #4]
@        ldr     r3, =func_table
@        mov     r12, r3
@        ldr     r3, [sp]
@        blx     r12
@        push    {r3}
@        ldr     r3, [sp, #4]
@        mov     r12, r3
@        pop     {r3}
@        add     sp, #8
        bx      lr

        .align 4
func_table:
        .word   0 @ Target_EnableInterrupts
        .word   0 @ Target_DisableInterrupts
        


        .type Target_EnableInterrupts, %function
Target_EnableInterrupts:
        cpsie   i
        bx      lr


        .type Target_DisableInterrupts, %function
Target_DisableInterrupts:
        cpsid   i
        bx      lr
