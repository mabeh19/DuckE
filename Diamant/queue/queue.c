
#include <string.h>

#include "../scheduler/scheduler.h"
#include "../semaphore/semph.h"
#include "queue.h"



typedef struct Queue_t {
    uint8_t *buffer;
    uint32_t queueBack;
    uint32_t queueFront;
    size_t itemSize;
    uint32_t maxNumItems;
    Semaphore currentNumItems;
} Queue_t;




void Queue_Create(Queue *queue, void *buffer, uint32_t maxNumItems, size_t itemSize)
{
    if ((queue != NULL) && (buffer != NULL)) {
        Queue_t *q = (Queue_t*)queue;

        q->buffer = buffer;
        q->maxNumItems = maxNumItems;
        q->itemSize = itemSize;
        q->queueBack = 0U;
        q->queueFront = 0U;
        Semaphore_Create(&q->currentNumItems, maxNumItems, maxNumItems);
    }
}


void Queue_Delete(Queue *queue)
{
    if (queue) {
        memset(queue, 0x00, sizeof(Queue_t));
    }
}


bool Queue_PushBack(Queue *queue, const void *item, uint32_t maxTicksToWait)
{
    bool success = false;
    if (queue != NULL && item != NULL) {
        Queue_t *q = (Queue_t *)queue;
        SemaphoreWaiter waiter;

        if (Semaphore_Take(&q->currentNumItems, &waiter, maxTicksToWait)) {
            Scheduler_EnterCriticalSection();

            uint32_t ind = q->queueBack * q->itemSize;

            memcpy(&q->buffer[ind], item, q->itemSize);

            q->queueBack++;
            
            if (q->queueBack >= q->maxNumItems) {
                q->queueBack = 0U;
            }

            Scheduler_ExitCriticalSection();
            success = true;
        }
    }

    return success;
}


bool Queue_PushFront(Queue *queue, const void *item, uint32_t maxTicksToWait)
{
    bool success = false;
    if (queue != NULL && item != NULL) {

        Queue_t *q = (Queue_t *)queue;
        SemaphoreWaiter waiter;
        
        if (Semaphore_Take(&q->currentNumItems, &waiter, maxTicksToWait)) {
            Scheduler_EnterCriticalSection();

            q->queueFront--;

            if (q->queueFront >= q->maxNumItems) {
                q->queueFront = q->maxNumItems - 1;
            }

            uint32_t ind = q->queueFront * q->itemSize;

            memcpy(&q->buffer[ind], item, q->itemSize);

            Scheduler_ExitCriticalSection();
            success = true;
        }
    }

    return success;
}


bool Queue_PopFront(Queue *queue, uint32_t maxTicksToWait, void *item)
{
    bool success = false;
    if (queue != NULL) {

        Queue_t *q = (Queue_t *)queue;
        SemaphoreWaiter waiter;

        if (Semaphore_Give(&q->currentNumItems, &waiter, maxTicksToWait)) {
            Scheduler_EnterCriticalSection();

            uint32_t ind = q->queueFront * q->itemSize;

            memcpy(item, &q->buffer[ind], q->itemSize);

            q->queueFront++;

            if (q->queueFront >= q->maxNumItems) {
                q->queueFront = 0U;
            }

            Scheduler_ExitCriticalSection();
            success = true;
        }
    }

    return success;
}



bool Queue_PopBack(Queue *queue, uint32_t maxTicksToWait, void *item)
{
    bool success = false;
    if (queue != NULL) {

        Queue_t *q = (Queue_t *)queue;
        SemaphoreWaiter waiter;

        if (!Semaphore_Give(&q->currentNumItems, &waiter, maxTicksToWait)) {
            Scheduler_EnterCriticalSection();

            q->queueBack--;

            if (q->queueBack >= q->maxNumItems) {
                q->queueBack = q->maxNumItems - 1;
            }

            uint32_t ind = q->queueBack * q->itemSize;

            memcpy(item, &q->buffer[ind], q->itemSize);

            Scheduler_ExitCriticalSection();
            success = true;
        }
    }

    return true;
}

