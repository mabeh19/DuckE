/*
 * Copyright (c) 2023, Mathias Ingeman Behrens
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree.
 */



#ifndef DIAMANT_EVENT_H
#define DIAMANT_EVENT_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

typedef struct Event Event;
typedef void (*EventHandler)(const Event *event, void *ctx);


typedef enum {
    EventType_AwakeOne,
    EventType_AwakeAll
} EventType;


enum DummyEnum {
    dummy1,
    dummy2
};

typedef struct EventListener {
    enum DummyEnum dummy1;
    union {
        struct {
            void *dummy2;
            uint8_t dummy3;
        };
        struct {
            void *dummy4;
            void **dummy5;
        };
    };
    void *dummy6;
} EventListener;


struct Event {
    void *dummy1;
    enum DummyEnum dummy2;
    void *dummy3;
};



/*
 * Create new event. Should only be called after Event_Initialize.
 * Event is of type `AwakeAll`.
 */
void Event_Create(Event *event, const char *name);


/*
 *  Create new typed event.
 */
void Event_CreateTyped(Event *event, const char *name, EventType type);

/*
 * Add async handler to event,
 * this is usable outside of scheduler
 */
void Event_Listen(Event *event, EventListener *listener, uint8_t priority, EventHandler handler);


/*
 * Sleep task until event occurs,
 * returns true if awoken early
 */
bool Event_Wait(Event *event, EventListener *listener, void **ctx, uint32_t maxTicksToWait);


/*
 * Broadcast event to listeners
 */
void Event_Broadcast(const Event *event, void *ctx);



/*
 * Empties list of listeners
 */
void Event_Consume(Event *event);

#ifdef __cplusplus
}
#endif

#endif /* INC_EVENT_H */


