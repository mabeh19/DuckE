/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#include <stdio.h>
#include <stdint.h>
#include "../../scheduler/scheduler.h"
#include "hardware/exception.h"
#include "hardware/clocks.h"

#define configTICK_RATE_HZ (1000U)
/* Constants required to manipulate the NVIC. */
#define portNVIC_SYSTICK_CTRL_REG             ( *( ( volatile uint32_t * ) 0xe000e010 ) )
#define portNVIC_SYSTICK_LOAD_REG             ( *( ( volatile uint32_t * ) 0xe000e014 ) )
#define portNVIC_SYSTICK_CURRENT_VALUE_REG    ( *( ( volatile uint32_t * ) 0xe000e018 ) )
#define portNVIC_INT_CTRL_REG                 ( *( ( volatile uint32_t * ) 0xe000ed04 ) )
#define portNVIC_SHPR3_REG                    ( *( ( volatile uint32_t * ) 0xe000ed20 ) )
#define NVIC_ICPR                             ( *( ( volatile uint32_t * ) 0xe000e280 ) )
#define portNVIC_SYSTICK_CLK_BIT              ( 1UL << 2UL )
#define portNVIC_SYSTICK_INT_BIT              ( 1UL << 1UL )
#define portNVIC_SYSTICK_ENABLE_BIT           ( 1UL << 0UL )
#define portNVIC_SYSTICK_COUNT_FLAG_BIT       ( 1UL << 16UL )
#define portNVIC_PENDSVSET_BIT                ( 1UL << 28UL )
#define portMIN_INTERRUPT_PRIORITY            ( 255UL )
#define portNVIC_PENDSV_PRI                   ( portMIN_INTERRUPT_PRIORITY << 16UL )
#define portNVIC_SYSTICK_PRI                  ( portMIN_INTERRUPT_PRIORITY << 24UL )



#define SYSTICK_NUM 0
#define SYSTICK_IRQ TIMER_IRQ_0
#define CLOCK_SYS ((uint32_t)125e6)

//extern void SysTick_Handler(void);
extern void isr_systick(void);

void
Scheduler_ArmTimer(void)
{
    portNVIC_SYSTICK_LOAD_REG = ( clock_get_hz( clk_sys ) / configTICK_RATE_HZ ) - 1UL;
    //timer_hw->alarm[SYSTICK_NUM] = 1000U;
}

static void
Scheduler_InitTimer(void)
{
    
    /* Stop and reset the SysTick. */
    portNVIC_SYSTICK_CTRL_REG = 0UL;
    portNVIC_SYSTICK_CURRENT_VALUE_REG = 0UL;

    /* Configure SysTick to interrupt at the requested rate. */
    Scheduler_ArmTimer();
    portNVIC_SYSTICK_CTRL_REG = portNVIC_SYSTICK_CLK_BIT | portNVIC_SYSTICK_INT_BIT | portNVIC_SYSTICK_ENABLE_BIT;


    portNVIC_SHPR3_REG |= portNVIC_SYSTICK_PRI;
    exception_set_exclusive_handler(SYSTICK_EXCEPTION, isr_systick);
}


void
Scheduler_InitTick(void)
{
    Scheduler_InitTimer();
}
