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


#define STM32_SYSTICK_CTRL_REG             	(*((volatile uint32_t *)0xe000e010))
#define STM32_SYSTICK_LOAD_REG             	(*((volatile uint32_t *)0xe000e014))
#define STM32_SYSTICK_CURRENT_VALUE_REG    	(*((volatile uint32_t *)0xe000e018))
#define STM32_SHPR3_REG                    	(*((volatile uint32_t *)0xe000ed20))
#define STM32_SYSTICK_CLK_BIT              	(1UL << 2UL)
#define STM32_SYSTICK_INT_BIT              	(1UL << 1UL)
#define STM32_SYSTICK_ENABLE_BIT           	(1UL << 0UL)
#define STM32_MIN_INTERRUPT_PRIORITY       	(0xFFU)
#define STM32_PENDSV_PRI                   	(STM32_MIN_INTERRUPT_PRIORITY << 16UL)
#define STM32_SYSTICK_PRI                  	(STM32_MIN_INTERRUPT_PRIORITY << 24UL)
#define STM32_CORE_FREQUENCY				((uint64_t)100000000ULL)


extern void SysTick_Handler(void);
extern void SVCall_Handler(void);
extern void PendSV_Handler(void);



static void
Target_InitTimer(void)
{
    
    /* Stop and reset the SysTick. */
    STM32_SYSTICK_CTRL_REG = 0UL;
    STM32_SYSTICK_CURRENT_VALUE_REG = 0UL;

    /* Configure SysTick to interrupt at the configured rate. */
    STM32_SYSTICK_LOAD_REG = (STM32_CORE_FREQUENCY / DIAMANT_TICK_RATE_HZ) - 1UL;
    STM32_SYSTICK_CTRL_REG = STM32_SYSTICK_CLK_BIT | STM32_SYSTICK_INT_BIT | STM32_SYSTICK_ENABLE_BIT;


    /*
     * Setup PendSV and SysTick to have same priority
     */
    STM32_SHPR3_REG |= STM32_SYSTICK_PRI;
    STM32_SHPR3_REG |= STM32_PENDSV_PRI;
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

