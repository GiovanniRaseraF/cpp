/*
Nel live lock alcuni thread stanno ancora lavorando
    - nel deadlock alcuni sono inattivi

I live lock posso generarsi cercando di evitare i deadlock
*/

#include <iostream>
#include <mutex>
#include <thread>
using namespace std::chrono_literals;
std::timed_mutex m1, m2;

void func1(){
    std::this_thread::sleep_for(1s);

    bool locked{false};

    while(!locked){
        std::lock_guard lk{m1};

        std::this_thread::sleep_for(2s);
        std::cout << "Dopo di te claude!" << std::endl;

        locked = m2.try_lock_for(50ms);
    }
}

void func2(){
    bool locked{false};

    while(!locked){
        std::lock_guard lk{m2};

        std::this_thread::sleep_for(2s);
        std::cout << "No after you Megan" << std::endl;

        locked = m1.try_lock_for(50ms);
    }
}

int main(){
    std::thread t1{func1};
    std::thread t2{func2};

    t1.join();
    t2.join();
}