

#pragma once

#include <string>
#include <list>
#include <functional>

namespace templates
{

template<class T>
class Event {

public:
    Event(const char* name) : eventName{name}, listeners{}
    {

    }

    ~Event() {}

    typedef std::function<void(const Event<T>* event, T ctx)> Listener;
    
    void add_listener(Listener listener)
    {
        listeners.push_back(listener);
    }

    void broadcast(T ctx)
    {
        for (auto& l : listeners) 
            l(this, ctx);
    }

    void consume()
    {
        listeners.clear();
    }
    

private:

    std::string eventName;
    std::list<Listener> listeners;
};
}
