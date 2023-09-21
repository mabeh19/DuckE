/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_PORT_H
#define DIAMANT_PORT_H


#define DIAMANT_PORT_NUM_REGS   (16U + 16U)
#define DIAMANT_PORT_REG_SIZE   (8U)

#define Scheduler_BackupR0()    __asm(" mov  %rcx, %rax\n")
#define Scheduler_RestoreR0()   __asm(" mov  %rax, %rcx\n")

#define Scheduler_SwitchToInternalStack() __asm( \
        "mov %0, %%rsp\n" \
        "mov %%rsp, %%rbp\n" \
        : \
        : "m"(internal_stackPtr) \
    );

#define Scheduler_SaveCoreRegisters() __asm( \
        "lea    +0x18(%rsp), %rsp\n" \
        "pushfq\n" \
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
        "lea    -128(%rsp), %rsp\n"\
        "movsd  +0(%rsp), %xmm15\n" \
        "movsd  +8(%rsp), %xmm14\n" \
        "movsd  +16(%rsp), %xmm13\n" \
        "movsd  +24(%rsp), %xmm12\n" \
        "movsd  +32(%rsp), %xmm11\n" \
        "movsd  +40(%rsp), %xmm10\n" \
        "movsd  +48(%rsp), %xmm9\n" \
        "movsd  +56(%rsp), %xmm8\n" \
        "movsd  +64(%rsp), %xmm7\n" \
        "movsd  +72(%rsp), %xmm6\n" \
        "movsd  +80(%rsp), %xmm5\n" \
        "movsd  +88(%rsp), %xmm4\n" \
        "movsd  +96(%rsp), %xmm3\n" \
        "movsd  +104(%rsp), %xmm2\n" \
        "movsd  +112(%rsp), %xmm1\n" \
        "movsd  +120(%rsp), %xmm0\n" \
    )

#define Scheduler_EnableInterrupts() //do { sigset_t set; sigemptyset(&set); sigaddset(&set, SIGALRM); sigprocmask(SIG_BLOCK, &set, NULL); } while ()
#define Scheduler_DisableInterrupts() //do { sigset_t set; sigemptyset(&set); sigaddset(&set, SIGALRM); sigprocmask(SIG_UNBLOCK, &set, NULL); } while (0)

#endif /* DIAMANT_PORT_H */

