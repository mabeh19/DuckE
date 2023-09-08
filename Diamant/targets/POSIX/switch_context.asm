;
; Copyright (c) 2023, Mathias Ingeman Behrens
; All rights reserved.
;
; This source code is licensed under the BSD-style license found in the
; LICENSE file in the root directory of this source tree.
;

        section .text

        global Scheduler_PushEntryRegisters
        global Scheduler_SwitchTask
        global Scheduler_SaveStackPointer
        global Target_CopyStackPointer
        global isr_systick 


; Scheduler_PushEntryRegisters
; rdi: void *stackPtr
; rsi: void *ctx
Scheduler_PushEntryRegisters:
        mov     qword [rdi - 8], rsi
        ret

; Scheduler_SwitchTask()
; rdi: void* newStackPtr
Scheduler_SwitchTask:
        mov     rsp, rdi
        popfq
        pop     r15
        pop     r14
        pop     r13
        pop     r12
        pop     r11
        pop     r10
        pop     r9
        pop     r8
        pop     rbp
        pop     rdi
        pop     rsi
        pop     rdx
        pop     rcx
        pop     rbx
        pop     rax
        ret


; Scheduler_SaveStackPointer
; rdi: void** stackPtrPtr
Scheduler_SaveStackPointer:
        push    rax
        mov     rax, rsp
        add     rax, 16
        mov     qword [rdi], rax
        pop     rax
        ret

        extern Scheduler_UpdateTicks
        extern Scheduler_ContextSwitch

isr_systick:
        push    rax
        push    rbx
        push    rcx
        push    rdx
        push    rdi
        push    rsi
        call    Scheduler_UpdateTicks
        pop     rsi
        pop     rdi
        pop     rdx
        pop     rcx
        pop     rbx
        pop     rax
        jmp     Scheduler_ContextSwitch


Target_CopyStackPointer:
        mov     rax, [rsp + 17 * 8]     ; grab RIP from signal stack
        mov     rbx, [rsp + 16 * 8]     ; grab RSP from signal stack
        sub     rbx, 8                  ; calculate the address to place RIP   
        mov     [rbx], rax              ; manually place on task stack 
        mov     [rsp + 16 * 8], rbx     ; update the stack pointer on the signal stack
        ret