

#include "Queue.h"
#include "../Diamant/Diamant/queue/queue.h"

#pragma once

template<typename T, size_t NUM_ELEMS, uint32_t PUSH_WAIT_TIME = 0xFFFFFFFFU, uint32_t POP_WAIT_TIME = 0xFFFFFFFFU>
class DiamantQueue : public templates::Queue<T>
{
public:

    DiamantQueue()
    {
        Queue_Create(&queue, queueBuffer, NUM_ELEMS, sizeof(T));
    }


    ~DiamantQueue()
    {

    }


    virtual T PopFront() override
    {
    T ele;

        Queue_PopFront(&queue, POP_WAIT_TIME, &ele);

        return ele;
    }

    virtual T PopBack() override
    {
    T ele;

        Queue_PopBack(&queue, POP_WAIT_TIME, &ele);

        return ele;
    }

    virtual void PushFront(const T* ele) override
    {
        Queue_PushFront(&queue, ele, PUSH_WAIT_TIME);
    }

    virtual void PushBack(const T* ele) override
    {
        Queue_PushBack(&queue, ele, PUSH_WAIT_TIME);
    }

private:

    Queue queue;
    T queueBuffer[NUM_ELEMS];
};
