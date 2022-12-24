/*
Queue practical 

utilizzo delle queue in modo parallelo

il promblema è che accedre al valore e fare pop
sono due operazini diverse
*/

#include <mutex>
#include <thread>
#include <queue>

template <class T>
class concurrent_queue{
    std::mutex m;
    std::queue<T> q;
    
    public:
    concurrent_queue() = default;
    void push(T val){
        std::lock_guard<std::mutex> lg(m);
        q.push(value);
    }

    void pop(T &val){
        std::unique_lock<std::mutex> lg(m);

        if (q.empty()){
            throw std::exception("queue is empty");
        }

        val = q.front();
        q.pop();
    }
};