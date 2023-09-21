
#pragma once


namespace templates
{

template<typename T>
class Queue
{
public:

    
    virtual T PopFront() = 0;
    virtual T PopBack() = 0;
    virtual void PushFront(const T* ele) = 0;
    virtual void PushBack(const T* ele) = 0;
};

}
