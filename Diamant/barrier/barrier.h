/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#ifndef DIAMANT_BARRIER_H
#define DIAMANT_BARRIER_H


#include "../event/event.h"
#include "../scheduler/scheduler.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct BarrierTask {
    TaskHandle task;
    bool synced;

    struct BarrierTask* nextTask;
} BarrierTask;


typedef struct {
    uint16_t numTasks;

    BarrierTask* tasks;
} Barrier;


/*
 * @brief Create new thread barrier
 */
void Barrier_Create(Barrier* barrier);


#if 0
/*
 * @brief Create new anonymous barrier
 */
void Barrier_CreateAnonymous(Barrier* barrier, uint32_t numThreads);
#endif


/*
 * @brief Register task for non-anonymous barrier
 */
void Barrier_Register(Barrier* barrier, BarrierTask* task);


/*
 * @brief Synchronize task with other registered tasks
 *
 * @return true If synchronized, false if timeout
 */
bool Barrier_Synchronize(Barrier* barrier, uint32_t timeout);


#ifdef __cplusplus
}
#endif

#endif /* DIAMANT_BARRIER_H */


