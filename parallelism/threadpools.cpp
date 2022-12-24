#include <thread>
#include <iostream>
#include <functional>
#include <atomic>
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
using func = std::function<void()>;
class thpoll{
    concurrent_queue<func> work_q;
    std::vector<std::thread> threads;
    void worker();
    public:
    thpoll();
    ~thpoll();
    void submit(func f);
};

thpoll::thpoll(){
    auto numcpus = std::thread::hardware_concurrency();
    for(int i = 0; i < numcpus; i++){
        threads.push_back(std::thread{thpoll::worker, this});
    }
}



void thpoll::worker(){
    while(true){
        func work;
        work_q.pop(work);

        work();
    }
}

void thpoll::submit(func f){
    work_q.push(f);
}