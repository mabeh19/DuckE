# Introduction
Diamant is an RTOS for embedded systems which focuses on safety. 
Static memory allocation is the default, but users can opt in for dynamic memory allocation using application defined functions. All modules can be initialized with application defined dynamic memory allocation functions.

## Diamant features
1. Scheduler - currently only supports preemptive scheduling. 
2. Events - flexible event system which supports both async function callbacks as well as blocking tasks.



# Diamant Roadmap
As development is still in the early stages, target support is VERY limited; currently the only target supported is the Raspberry Pi Pico W.

The following features are planned:
1. EventQueue - queue for events which can be retrieved
2. Mutex/Semaphore - resource guards, will be implemented in a similar way as events
3. FFile - integration with [FFile filesystem](https://github.com/mabeh19/FFile)
4. Timing analysis - the goal is to allow for static timing analysis of tasks, which would be available for configurations using very strict requirements for tasks.
