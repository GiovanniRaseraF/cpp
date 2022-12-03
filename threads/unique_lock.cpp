#include <thread>
#include <mutex>
#include <string>
#include <iostream>

std::timed_mutex mut_print;

void function(int n){
    for(int i = 0; i < 10; i++){
        try{
            bool schippend = true;
            std::unique_lock<std::timed_mutex> unq_lock_print{mut_print, std::defer_lock};
            unq_lock_print.try_lock_for(std::chrono::seconds(1));
            //unq_lock_print.try_lock();

            schippend = false;
            std::cout << "num: " << n << std::endl;
            std::this_thread::sleep_for(std::chrono::milliseconds(300));

            unq_lock_print.unlock();

            if (schippend){
                std::cout << "skippend the lock" << std::endl;
            }else{
                std::cout << "unlocked correctly" << std::endl;
            }
        }catch(std::system_error &ex){
            std::cout << ex.what() << std::endl;
        }
    }
}

int main(){
    std::thread t1{function, 10};
    std::thread t2{function, 11};

    t1.join();
    t2.join();
}