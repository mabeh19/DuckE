# 0 "/home/mathias/Documents/C/PiPico/src/scheduler/switch_context.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/mathias/Documents/C/PiPico/src/scheduler/switch_context.S"

        .syntax unified
        .thumb


        .global Scheduler_SaveCoreRegisters
        .global Scheduler_SwitchTask
        .global Scheduler_SaveStackPointer
        .global isr_systick


        .code 16
        .align 2

.macro Scheduler_SaveCoreRegisters
        push {lr}
        push {r0-r7}
        mov r0, r8
        mov r1, r9
        mov r2, r10
        mov r3, r11
        mov r4, r12
        push {r0-r4}
        push {lr}
.endm

        .thumb_func
        .code 16
        .align 2




Scheduler_SwitchTask:
        mov sp, r0


        pop {r0-r2}
        msr apsr, r0
        msr primask, r1
        msr control, r2


        pop {r0-r4}
        mov r8, r0
        mov r9, r1
        mov r10, r2
        mov r11, r3
        mov r12, r4


        pop {r0-r7}


        pop {pc}


        .thumb_func
        .code 16
        .align 2

Scheduler_SaveStackPointer:
        mov r1, sp
        str r1, [r0]
        bx lr



        .type isr_systick,%function
        .thumb_func
        .code 16
        .align 2
isr_systick:


        push {r0-r7}
        push {lr}

        movs r0, #1
        ldr r1, =systickICPR
        str r0, [r1]

        bl Scheduler_ArmTimer
        bl print

        pop {r0}
        mov lr, r0
        pop {r0-r7}

        b Scheduler_ContextSwitch


systickICPR: .word 0x40054034
debugMsg: .asciz "tick\n"
