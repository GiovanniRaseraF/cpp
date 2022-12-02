#include <thread>
#include <mutex>
#include <string>
#include <iostream>

std::mutex mut_print;

void function(int n){
    for(int i = 0; i < 10; i++){
        try{
            bool schippend = true;
            std::unique_lock<std::mutex> unq_lock_print{mut_print, std::defer_lock};
            unq_lock_print.try_lock_for(
                //std::chrono::time_point<
                 //   std::chrono::high_resolution_clock>{
                         std::chrono::seconds(1)
                    //}
            );
            schippend = false;
            std::cout << "num: " << n << std::endl;
            std::this_thread::sleep_for(std::chrono::seconds(5));
            unq_lock_print.unlock();
            if (schippend){
                std::cout << "skippend the lock" << std::endl;
            }
        }catch(int &ex){
            std::cout << ex << std::endl;
        }
    }
}

int main(){
    std::thread t1{function, 10};
    std::thread t2{function, 11};

    t1.join();
    t2.join();
}