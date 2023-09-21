

#pragma once

#include <queue>
#include "Queue.h"

template<typename T>
class StdQueue : public templates::Queue<T>
{
public:

    StdQueue() : queue{}
    {

    }


    ~StdQueue()
    {

    }


    virtual T PopFront() override
    {
        while (queue.empty()) {}

        T ele = queue.front();
        queue.pop();   

        return ele;
    }


    virtual T PopBack() override
    {
        while (queue.empty()) {}

        T ele = queue.front();

        return ele;
    }


    virtual void PushFront(const T* ele) override 
    {
        queue.push(*ele);
    }


    virtual void PushBack(const T* ele)
    {
        queue.push(*ele);
    }

private:
    std::queue<T> queue;
};