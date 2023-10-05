# Introduction
Diamant is an RTOS for embedded systems which focuses on safety. 
Static memory allocation is the default, but users can opt in for dynamic memory allocation using application defined functions.

## Diamant features
1. Scheduler - currently only supports preemptive scheduling. 
2. Events - flexible event system which supports both async function callbacks as well as blocking tasks.
3. Queue - circular buffers that can be used as either normal queues (FIFO) or stacks (LIFO).
4. Mutex/Semaphore - event based resource guards.


# Diamant Roadmap
As development is still in the early stages, target support is VERY limited; currently the only target supported is the RP2040.

The following features are planned:
1. FFile - integration with [FFile filesystem](https://github.com/mabeh19/FFile)
2. Timing analysis - the goal is to allow for static timing analysis of tasks, which would be available for configurations using very strict requirements for tasks.
