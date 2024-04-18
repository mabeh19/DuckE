/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

#ifndef DIAMANT_CONFIG_H
#define DIAMANT_CONFIG_H


#define DIAMANT_SCHEDULER_MIN_STACK_SIZE    ((uint32_t)1024U)
#define DIAMANT_SCHEDULER_VARG_TASK         (0U)        /* experimental and not recommended for safe designs */
#define DIAMANT_NUM_CORES                   (1U)
#define DIAMANT_IDLE_STACK_SIZE             DIAMANT_SCHEDULER_MIN_STACK_SIZE
#define DIAMANT_INTERNAL_STACK_SIZE         ((uint32_t)512U)
#define DIAMANT_TICK_RATE_HZ                ((uint32_t)1000U)
#define DIAMANT_FPU_SUPPORT					(1U)
#define DIAMANT_TASK_MAILBOXES              ((uint32_t)2U)
#define DIAMANT_MESSAGE_TYPE                uint32_t
#define DIAMANT_TRACE_STATS                 (1U)


#endif /* DIAMANT_CONFIG_H */
