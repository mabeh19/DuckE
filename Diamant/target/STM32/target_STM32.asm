@
@ Copyright (c) 2023, Mathias Ingeman Behrens
@ All rights reserved.
@
@ This source code is licensed under the BSD-style license found in the
@ LICENSE file in the root directory of this source tree.
@

        .syntax unified


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
        .thumb_func
        .code   16
        .align  2
Target_SetEntryRegisters:
        subs    r0, #28
        str     r1, [r0]                @ argument
        movs    r1, #0
        str     r1, [r0, #20]           @ LR
        str     r2, [r0, #24]           @ PC
        ldr     r1, =init_xpsr
        ldr     r1, [r1]
        str     r1, [r0, #28]           @ xPSR
        subs    r0, #32                 @ setup stack stack pointer for task start
        bx      lr

        .align 4
init_xpsr: .word        0x01000000



@---------------------------------------------------
@ Target_StartFirstTask
@ r0: first task
        .thumb_func
        .code   16
        .align  2
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
        .thumb_func
        .code 16
        .align 2
@ r0: void** stackPtrPtr
Target_SaveStackPointer:
        mov     r1, sp
        str     r1, [r0]
        bx      lr




@---------------------------------------------------

        .type SysTick_Handler,%function
        .thumb_func
        .code 16
        .align 2
SysTick_Handler:
        mrs     r3, primask
        cpsid   i

        push    {r3, r4}
        push    {lr}
        
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
        .thumb_func
        .code 16
        .align 2
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
        .thumb_func
        .code 16
        .align 2
PendSV_Handler:
        cpsid   i
        @ Save stack pointer
        push    {lr}
        bl      Scheduler_GetCurrentTask
        mov     r1, r0
        pop     {r0}
        mov     lr, r0
        add     sp, #4
        subs    r1, #4
        mrs     r0, psp
        subs    r0, #32
        str     r0, [r1]

        @ Save registers
        stmia   r0!, {r4-r7}
        mov     r4, r8
        mov     r5, r9 
        mov     r6, r10
        mov     r7, r11
        stmia   r0!, {r4-r7}

        bl      Scheduler_ContextSwitch
        push    {r0}
        bl      Scheduler_GetCurrentTask
        subs    r0, #4          @ get stack pointer
        ldr     r0, [r0]
        cpsie   i

        @ fall through to SwitchTask

        .thumb_func
        .code 16
        .align 2
@ Target_SwitchTask()
@ r0: void* newStackPtr
Target_SwitchTask:

        .thumb_func
        .code 16
        .align 2
Target_SwitchTaskNoSp:
        @ Restore registers
        adds    r0, r0, #16     @ move to high registers
        ldmia   r0!, {r4-r7}
        mov     r8, r4
        mov     r9, r5
        mov     r10, r6
        mov     r11, r7

        msr     psp, r0         @ save new top of stack
        subs    r0, r0, #32     @ grab low registers
        ldmia   r0!, {r4-r7}


        @ Return
        ldr     r0, =EXC_RET
        ldr     r0, [r0]
        bx      r0


        .align 4
EXC_RET: .word  0xfffffffd



@---------------------------------------------------
@       SV Handler
@ funcs:
@       | Function                      | r12 |
@---------------------------------------------------
@       | void enable_ints(void)        |   0 |
@       | void disable_ints(void)       |   1 |          
@       |                               |     |          
@---------------------------------------------------
        .type SVCall_Handler, %function
        .thumb_func
        .code 16
        .align 2
SVCall_Handler:
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
        .thumb_func
        .code   16
        .align  2
Target_EnableInterrupts:
        cpsie   i
        bx      lr


        .type Target_DisableInterrupts, %function
        .thumb_func
        .code   16
        .align  2
Target_DisableInterrupts:
        cpsid   i
        bx      lr
