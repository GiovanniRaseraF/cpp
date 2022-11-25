#include <thread>
#include <iostream>
#include <string>
#include <pthread.h>
#include <mutex>
#include <cstring>

std::mutex iomtx;

void func(int num){
    while(true){
        std::this_thread::sleep_for(std::chrono::seconds(1));

        sched_param sch;
        int policy;

        pthread_getschedparam(pthread_self(), &policy, &sch);

        std::lock_guard<std::mutex> lk(iomtx);

        std::cout << "Thread: " << num << " ha priorità -> " << sch.sched_priority << std::endl;
    }
}

int main(){
    std::thread t1{[](){
            std::cout << "1" << std::endl; 
            std::this_thread::sleep_for(std::chrono::seconds(2));
        }
    };

    std::thread t_p0{func, 1}, t_p20{func, 2};

    sched_param sch;
    int policy;
    
    pthread_getschedparam(t_p20.native_handle(), &policy, &sch);
    sch.sched_priority = 20;

    if(pthread_setschedparam(t_p20.native_handle(), SCHED_FIFO, &sch)){
        std::cerr << "Need sudo priviledge to setpriority: " << std::strerror(errno) << std::endl;
    }

    t_p0.join();
    t_p20.join();
    t1.join();
}