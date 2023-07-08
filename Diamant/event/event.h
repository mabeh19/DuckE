/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef INC_DIAMANT_EVENT_H
#define INC_DIAMANT_EVENT_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

typedef struct Event Event;
typedef void (*EventHandler)(const Event* event, void* ctx);


typedef enum EventType {
    EventType_AwakeAll,
    EventType_AwakeOne
} EventType;



/*
 * Create new event. Should only be called after Event_Initialize.
 * Event is of type `AwakeAll`.
 */
Event* Event_Create(const char* name);


/*
 *  Create new typed event.
 */
Event* Event_CreateTyped(const char* name, EventType type);

/*
 * Add async handler to event,
 * this is usable outside of scheduler
 */
void Event_Listen(const Event* event, uint8_t priority, EventHandler handler);


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


