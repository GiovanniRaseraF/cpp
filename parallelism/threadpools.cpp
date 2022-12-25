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
        q.push(val);
    }

    void pop(T &val){
        std::unique_lock<std::mutex> lg(m);

        if (q.empty()){
            throw std::exception();
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
        threads.push_back(std::thread{&thpoll::worker, this});
    }
}

thpoll::~thpoll(){
    for(auto &t : threads)
        t.join();
}

void thpoll::worker(){
    while(true){
        func work;
        try{
            work_q.pop(work);
        }catch(...){
            //std::cout << "end";
            return;
        }

        work();
    }
}

void thpoll::submit(func f){
    work_q.push(f);
}

int main(){
    thpoll poll{};

    for(int i = 0; i < 6; i++){
        poll.submit([](){
            std::cout << "" << std::this_thread::get_id() << std::endl;
        });
    }

    for(int i = 0; i < 10; i++){
        poll.submit([](){
            std::vector<int> vv{1, 3, 4, 8, 2, 3};
            int val = (std::rand() * 100) % vv.size();
            std::this_thread::sleep_for(std::chrono::seconds(
               val 
            ));
            std::cout << "end" << std::endl;
        });
    }

    return 0;
}