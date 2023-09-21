

#include "pico/multicore.h"
#include "hardware/structs/scb.h"

#include "multicore.h"
#include "../scheduler/scheduler.h"


void MultiCore_RunTaskOnSecondaryCore(const uint32_t core, const void *task, void *stack)
{
    if (core == 1U) { 
        void *taskPtr = (void*)((uint32_t)task | 1);    /* set thumb bit */
        multicore_reset_core1();
        multicore_launch_core1_raw(taskPtr, stack, scb_hw->vtor);
    }
}


uint32_t MultiCore_GetCoreNumber(void)
{
    return sio_hw->cpuid;
}
