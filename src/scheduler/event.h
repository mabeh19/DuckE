/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef INC_EVENT_H
#define INC_EVENT_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

typedef struct Event Event;
typedef void (*EventHandler)(void* ctx);


/*
 * Initialize Event module with given malloc and free
 */
void Event_Initialize(void* (*mallocFunc)(size_t), void (*freeFunc)(void*));


/*
 * Create new event. Should only be called after Event_Initialize
 */
Event* Event_Create(const char* name);


/*
 * Add async handler to event,
 * this is usable outside of scheduler
 */
void Event_Listen(Event* event, EventHandler handler);


/*
 * Sleep task until event occurs,
 * returns true if awoken early
 */
bool Event_Wait(Event* event, void** ctx, uint32_t maxTicksToWait);


/*
 * Broadcast event to listeners
 */
void Event_Broadcast(const Event* event, void* ctx);



/*
 * Empties list of listeners
 */
void Event_Consume(Event* event);

#ifdef __cplusplus
}
#endif

#endif /* INC_EVENT_H */


