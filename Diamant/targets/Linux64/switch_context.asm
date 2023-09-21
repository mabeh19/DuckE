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
        mov     qword [rdi - 1 * 8], rsi
        mov     qword [rdi - 7 * 8], rdi        ; copy RSP to RBP
        ret


; Scheduler_SwitchTask()
; rdi: void* newStackPtr
Scheduler_SwitchTask:
        mov     rsp, rdi
        movsd   qword [rsp + 0], xmm15
        movsd   qword [rsp + 8], xmm14
        movsd   qword [rsp + 16], xmm13
        movsd   qword [rsp + 24], xmm12
        movsd   qword [rsp + 32], xmm11
        movsd   qword [rsp + 40], xmm10
        movsd   qword [rsp + 48], xmm9
        movsd   qword [rsp + 56], xmm8
        movsd   qword [rsp + 64], xmm7
        movsd   qword [rsp + 72], xmm6
        movsd   qword [rsp + 80], xmm5
        movsd   qword [rsp + 88], xmm4
        movsd   qword [rsp + 96], xmm3
        movsd   qword [rsp + 104], xmm2
        movsd   qword [rsp + 112], xmm1
        movsd   qword [rsp + 120], xmm0
        add     rsp, 128
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
        popfq
        ret


; Scheduler_SaveStackPointer
; rdi: void** stackPtrPtr
Scheduler_SaveStackPointer:
        push    rax
        mov     rax, rsp
        add     rax, 24
        mov     qword [rdi], rax
        pop     rax

        ret



        extern Scheduler_UpdateTicks
        extern Scheduler_ContextSwitch

isr_systick:
        push    rax
        push    rdi
        push    rsi
        push    rdx
        push    rcx
        push    r8
        push    r9
        push    r10
        push    r11
        call    Scheduler_UpdateTicks
        pop     r11
        pop     r10
        pop     r9
        pop     r8
        pop     rcx
        pop     rdx
        pop     rsi
        pop     rdi
        pop     rax
        jmp     Scheduler_ContextSwitch


;push   rax
        ;push   rbx
        ;push   rcx
        ;push   rdx
        ;push   rsi
        ;push   rdi
        ;push   rbp
        ;push   r8
        ;push   r9
        ;push   r10
        ;push   r11
        ;push   r12
        ;push   r13
        ;push   r14
        ;push   r15
        ;sub    rsp, 128
        ;movsd  xmm15, [rsp + 0]
        ;movsd  xmm14, [rsp + 8]
        ;movsd  xmm13, [rsp + 16]
        ;movsd  xmm12, [rsp + 24]
        ;movsd  xmm11, [rsp + 32]
        ;movsd  xmm10, [rsp + 40]
        ;movsd  xmm9, [rsp + 48]
        ;movsd  xmm8, [rsp + 56]
        ;movsd  xmm7, [rsp + 64]
        ;movsd  xmm6, [rsp + 72]
        ;movsd  xmm5, [rsp + 80]
        ;movsd  xmm4, [rsp + 88]
        ;movsd  xmm3, [rsp + 96]
        ;movsd  xmm2, [rsp + 104]
        ;movsd  xmm1, [rsp + 112]
        ;movsd  xmm0, [rsp + 120]
        ;pushfq


;asm volatile (
;        "mov    %0, %%rdi\n"
;        "call   Scheduler_SaveStackPointer"
;        : 
;        : "r" ()
;        : "rdi"
;    );


Target_CopyStackPointer:
        mov     rax, [rsp + 17 * 8]     ; grab RIP from signal stack
        mov     rbx, [rsp + 16 * 8]     ; grab RSP from signal stack
        sub     rbx, 8                  ; calculate the address to place RIP   
        mov     [rbx], rax              ; manually place on task stack 
        mov     [rsp + 16 * 8], rbx     ; update the stack pointer on the signal stack
        ret
