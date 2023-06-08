
        .syntax unified
        .thumb


        .global Scheduler_SaveCoreRegisters
        .global Scheduler_SwitchTask
        .global Scheduler_SaveStackPointer
        .global SysTick_Handler

        
        .code 16
        .align 2

.macro Scheduler_SaveCoreRegisters
        push    {lr}            // we set PC to lr 
        push    {r0-r7}
        mov     r0, r8 
        mov     r1, r9
        mov     r2, r10
        mov     r3, r11
        mov     r4, r12
        push    {r0-r4}
        push    {lr}
.endm

        .thumb_func
        .code 16
        .align 2


// Scheduler_SwitchTask()
// r0: void* newStackPtr
Scheduler_SwitchTask:
        mov     sp, r0
       
        // Restore r8-r12
        pop     {r0-r4}
        mov     r8, r0
        mov     r9, r1
        mov     r10, r2
        mov     r11, r3
        mov     r12, r4

        // Restore r0-r7
        pop     {r0-r7}

        // Return
        pop     {pc}


        .thumb_func
        .code 16
        .align 2
// r0: void** stackPtrPtr
Scheduler_SaveStackPointer:
        mov     r1, sp
        str     r1, [r0]
        bx      lr

        .thumb_func
        .code 16
        .align 2
SysTick_Handler:
        // Clear SysTick int
        push    {r0-r7}
        push    {lr}

        movs    r0, #1
        ldr     r1, =systickICPR
        ldr     r1, [r1]
        str     r0, [r1]
        
        bl      Scheduler_UpdateTicks

        pop     {r0}
        mov     lr, r0
        pop     {r0-r7}
        
        bl      Scheduler_ArmTimer
        b       Scheduler_ContextSwitch

        .sect ".data"
systickICPR:     .word 0x40054034
