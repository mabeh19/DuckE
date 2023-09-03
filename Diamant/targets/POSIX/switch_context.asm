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
        global Scheduler_SwitchTaskNoSp
        global Scheduler_SaveStackPointer
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

Scheduler_SwitchTaskNoSp:
        popfq
        pop     r15
        pop     r14
        pop     r13
        pop     r12
        pop     r11
        pop     r10
        pop     r9
        pop     r8
        pop     rbp     ; maybe?
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
        mov     qword [rdi], rsp 
        ret

        extern Scheduler_UpdateTicks
        extern Scheduler_ContextSwitch

isr_systick:
        call    Scheduler_UpdateTicks
        jmp     Scheduler_ContextSwitch
