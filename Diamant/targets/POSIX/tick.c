/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/time.h>
#include <signal.h>
#include <errno.h>
#include <time.h>
#include "../../scheduler/scheduler.h"


#define TIMER_TYPE  ITIMER_VIRTUAL

#if TIMER_TYPE == ITIMER_VIRTUAL
#define SIG_TYPE SIGVTALRM
#elif TIMER_TYPE == ITIMER_REAL
#define SIG_TYPE SIGALRM
#endif

extern void isr_systick(void);
extern void Target_CopyStackPointer(void);
static timer_t timer;

void Scheduler_ArmTimer(void);

static void
Scheduler_AlarmHandler(int sig)
{
    Scheduler_ArmTimer();
    /* this is necessary to restore register pushed to stack during signal prologue */
    asm volatile ("add  $0x48, %rsp");

    /* Move RIP to task from backup */
    Target_CopyStackPointer();
    asm volatile (
        "pop    %r8\n"
        "pop    %r9\n"
        "pop    %r10\n"
        "pop    %r11\n"
        "pop    %r12\n"
        "pop    %r13\n"
        "pop    %r14\n"
        "pop    %r15\n"
        "pop    %rdi\n"
        "pop    %rsi\n"
        "pop    %rbp\n"
        "pop    %rbx\n"
        "pop    %rdx\n"
        "pop    %rax\n"
        "pop    %rcx\n"
    );
    asm volatile ("pop  %rsp\n");
    asm volatile ("jmp  isr_systick");
    //isr_systick();
}


void
Scheduler_ArmTimer(void)
{
struct itimerspec its = {
    .it_value = {
        .tv_sec = 0,
        .tv_nsec = 1e6
    },
    .it_interval = {
        .tv_sec = 0,
        .tv_nsec = 1e6
    }
};
    sigset_t set;

    timer_settime(timer, 0, &its, NULL);

    sigemptyset(&set);
    sigaddset(&set, SIG_TYPE);
    sigprocmask(SIG_UNBLOCK, &set, NULL);
}


static void
Scheduler_InitTimer(void)
{
const struct sigaction act = {
    .sa_handler = &Scheduler_AlarmHandler
};
struct sigevent sevp;

    /* Create a timer that sends a signal when it expires */
    sevp.sigev_notify = SIGEV_SIGNAL;
    sevp.sigev_signo = SIGALRM;

    /* bind SIG alarm handler */
    if (sigaction(SIGALRM, &act, NULL) != 0) {
        printf("Error binding handler to SIGALRM: %d\n", errno);
        exit(errno);
    }

    timer_create(CLOCK_REALTIME, &sevp, &timer);
    
    /* Setup sig alarm to be triggered every 1 ms */
    Scheduler_ArmTimer();
}


void
Scheduler_InitTick(void)
{
    Scheduler_InitTimer();
}
