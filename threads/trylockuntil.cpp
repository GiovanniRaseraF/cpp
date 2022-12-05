#include <iostream>
#include <thread>
#include <mutex>
#include <string>
using namespace std::chrono_literals;
std::timed_mutex mux;

void task1(){
    mux.lock();
    std::cout << "Task 1 ha il lock" << std::endl;
    std::this_thread::sleep_for(1s);
    mux.unlock();
}

void task2(){
    std::this_thread::sleep_for(100ms);
    
    std::cout << "Task 2 trying to take the lock" << std::endl;

    auto deadline = std::chrono::system_clock::now() + 90ms;

    while(!mux.try_lock_until(deadline)){
        deadline = std::chrono::system_clock::now() + 90ms;
        std::cout << "Task 2 cannot get the lock for now" << std::endl;
    }

    std::cout << "Task 2 toock the lock !!" << std::endl;
    mux.unlock();
}


int main(){
    std::thread t1{task1};
    std::thread t2{task2};

    t1.join();
    t2.join();
}