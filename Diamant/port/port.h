/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_PORT_H
#define DIAMANT_PORT_H


#if 0
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

#endif

#define DIAMANT_PORT_NUM_REGS   (16U)
#define DIAMANT_PORT_REG_SIZE   (8U)

#define Scheduler_BackupR0()    __asm(" mov  %rcx, %rax\n")
#define Scheduler_RestoreR0()   __asm(" mov  %rax, %rcx\n")

#define Scheduler_SwitchToInternalStack() __asm( \
        "mov %0, %%rsp"\
        : \
        : "m"(internal_stackPtr) \
    );

#define Scheduler_SaveCoreRegisters() __asm( \
        "push   %rax\n" \
        "push   %rbx\n" \
        "push   %rcx\n" \
        "push   %rdx\n" \
        "push   %rsi\n" \
        "push   %rdi\n" \
        "push   %rbp\n" \
        "push   %r8\n" \
        "push   %r9\n" \
        "push   %r10\n" \
        "push   %r11\n" \
        "push   %r12\n" \
        "push   %r13\n" \
        "push   %r14\n" \
        "push   %r15\n" \
        "pushfq\n" \
    )

#define Scheduler_EnableInterrupts() //do { sigset_t set; sigemptyset(&set); sigaddset(&set, SIGALRM); sigprocmask(SIG_BLOCK, &set, NULL); } while (0)
#define Scheduler_DisableInterrupts() //do { sigset_t set; sigemptyset(&set); sigaddset(&set, SIGALRM); sigprocmask(SIG_UNBLOCK, &set, NULL); } while (0)

#if 0
    asm volatile (
        "call   Scheduler_CURRENT_TASK\n"
        "add    %0, %%rax\n"
        "movb   $0, (8 + 5)(%%rax)\n"
        : 
        : "i" (sizeof(Scheduler_Task_t))
    );

    asm volatile (
        "mov    %0, %%rdi\n"
        "call   Scheduler_FindHighestPriorityTaskAvailable\n"
        "mov    %%rax, %%rdi\n"
        "call   Scheduler_SwitchTask\n"
        :
        : "i" (MultiCore_GetCoreNumber())
    );
#endif

#if 0
    asm volatile (
        "call   Scheduler_CURRENT_TASK\n"
        "mov    %rax, %rdi\n"
        "call   Scheduler_SaveStackPointer\n"
    );
#endif

#endif /* DIAMANT_PORT_H */

