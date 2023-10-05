/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */


#ifndef DIAMANT_QUEUE_H
#define DIAMANT_QUEUE_H

#include <stdbool.h>
#include <stdint.h>

#include "../semaphore/semph.h"

#ifdef __cplusplus
extern "C" {
#endif


typedef struct {
    uint8_t *buffer;
    uint32_t queueBack;
    uint32_t queueFront;
    size_t itemSize;
    uint32_t maxNumItems;
    Semaphore currentNumItems;
} Queue;



void Queue_Create(Queue *queue, void *buffer, uint32_t maxNumitems, size_t itemSize);
void Queue_Delete(Queue *queue);
bool Queue_PushBack(Queue *queue, const void *item, uint32_t maxTicksToWait);
bool Queue_PushFront(Queue *queue, const void *item, uint32_t maxTicksToWait);
bool Queue_PopFront(Queue *queue, uint32_t maxTicksToWait, void *item);
bool Queue_PopBack(Queue *queue, uint32_t maxTicksToWait, void *item);


#ifdef __cplusplus
}
#endif


#endif /* DIAMANT_QUEUE_H */

