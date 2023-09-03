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
#include "../../scheduler/scheduler.h"


#define SIGALARM_TIMER (0U)


extern void isr_systick(void);


void
Scheduler_ArmTimer(void)
{
static const struct itimerval INTERVAL = {
    .it_interval = {
        .tv_sec = 0,
        .tv_usec = 1000
    }
}; 
    int err = 0;
    if ((err = setitimer(SIGALARM_TIMER, &INTERVAL, NULL)) != 0) {
        printf("Error creating alarm timer, exiting...\n");
        exit(err);
    }
}


static void
Scheduler_AlarmHandler(int signal)
{
    isr_systick();
}


static void
Scheduler_InitTimer(void)
{
const struct sigaction act = {
    .sa_handler = &Scheduler_AlarmHandler
};
    /* bind SIG alarm handler */
    if (sigaction(SIGALRM, &act, NULL) != 0) {
        printf("Error binding handler to SIGALRM: %d\n", errno);
        exit(errno);
    }

    /* Setup sig alarm to be triggered every 1 ms */
    Scheduler_ArmTimer();


}


void
Scheduler_InitTick(void)
{
    Scheduler_InitTimer();
}
