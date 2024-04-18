/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#include "barrier.h"


#ifdef __cplusplus
extern "C" {
#endif

void Barrier_Create(Barrier* barrier)
{
    if (barrier != NULL) {
        //Event_Create(&barrier->event, "Barrier");
        barrier->tasks = NULL;
        barrier->numTasks = 0U;
    }
}

#if 0
void Barrier_CreateAnonymous(Barrier* barrier, uint32_t numtasks)
{
    
}
#endif

void Barrier_Register(Barrier* barrier, BarrierTask* task)
{
    if ((barrier != NULL) && (task != NULL)) {
        BarrierTask **tasks = &barrier->tasks;
        while (*tasks != NULL) {
            tasks = &(*tasks)->nextTask;
        }

        *tasks = task;
        task->task = Scheduler_GetCurrentTask();
        task->nextTask = NULL;
        barrier->numTasks++;
    }
}


bool Barrier_Synchronize(Barrier* barrier, uint32_t timeout)
{
    bool syncSuccess = false;

    if (barrier != NULL)
    {
        const TaskHandle task = Scheduler_GetCurrentTask();
        uint16_t syncedTasks = 0U;

        BarrierTask *tasks = barrier->tasks;

        while (tasks != NULL) {
            if (tasks->task == task) {
                tasks->synced = true;
            }
            syncedTasks += (uint16_t)tasks->synced;
            tasks = tasks->nextTask;
        }

        if (syncedTasks == barrier->numTasks) {
            for (BarrierTask *t = barrier->tasks; t != NULL; t = t->nextTask) {
                Scheduler_WakeTask(t->task);
                syncSuccess = true;
            }
        }
        else {
            syncSuccess = Scheduler_Sleep(timeout);
        }
    }

    return syncSuccess;
}

#ifdef __cplusplus
}
#endif

