/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */

/*
 * The setup is inspired by the FreeRTOS port for RP2040
 */

#include <stdio.h>
#include <stdint.h>

#include "../../scheduler/scheduler.h"
#include "hardware/exception.h"
#include "hardware/clocks.h"

#define RP2040_SYSTICK_CTRL_REG             (*((volatile uint32_t *)0xe000e010))
#define RP2040_SYSTICK_LOAD_REG             (*((volatile uint32_t *)0xe000e014))
#define RP2040_SYSTICK_CURRENT_VALUE_REG    (*((volatile uint32_t *)0xe000e018))
#define RP2040_SHPR3_REG                    (*((volatile uint32_t *)0xe000ed20))
#define RP2040_SYSTICK_CLK_BIT              (1UL << 2UL)
#define RP2040_SYSTICK_INT_BIT              (1UL << 1UL)
#define RP2040_SYSTICK_ENABLE_BIT           (1UL << 0UL)
#define RP2040_MIN_INTERRUPT_PRIORITY       (0xFFU)
#define RP2040_PENDSV_PRI                   (RP2040_MIN_INTERRUPT_PRIORITY << 16UL)
#define RP2040_SYSTICK_PRI                  (RP2040_MIN_INTERRUPT_PRIORITY << 24UL)



extern void SysTick_Handler(void);
extern void SVCall_Handler(void);
extern void PendSV_Handler(void);



static void
Target_InitTimer(void)
{
    
    /* Stop and reset the SysTick. */
    RP2040_SYSTICK_CTRL_REG = 0UL;
    RP2040_SYSTICK_CURRENT_VALUE_REG = 0UL;

    /* Configure SysTick to interrupt at the configured rate. */
    RP2040_SYSTICK_LOAD_REG = (clock_get_hz( clk_sys ) / DIAMANT_TICK_RATE_HZ) - 1UL;
    RP2040_SYSTICK_CTRL_REG = RP2040_SYSTICK_CLK_BIT | RP2040_SYSTICK_INT_BIT | RP2040_SYSTICK_ENABLE_BIT;


    /*
     * Setup PendSV and SysTick to have same priority
     */
    RP2040_SHPR3_REG |= RP2040_SYSTICK_PRI;
    RP2040_SHPR3_REG |= RP2040_PENDSV_PRI;
    exception_set_exclusive_handler(SYSTICK_EXCEPTION, SysTick_Handler);
    exception_set_exclusive_handler(SVCALL_EXCEPTION, SVCall_Handler);
    exception_set_exclusive_handler(PENDSV_EXCEPTION, PendSV_Handler);
}


void
Target_InitTick(void)
{
    Target_InitTimer();
}

void Target_Yield(void)
{
    *(uint32_t*)0xe000ed04 = (1U << 28U);
    asm volatile (
        "dsb\n"
        "isb"
    );
}

