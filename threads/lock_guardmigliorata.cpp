#include <iostream>
#include <thread>
#include <string>
#include <mutex>

std::mutex mut_print;

void function(int number){
    for(int i = 0; i < 1000; i++){
        try{
            {
                // RAII paradime
                std::lock_guard<std::mutex> lg_print{mut_print};
                std::cout << "numero: " << number << std::endl;
                throw number;
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(50));
        }catch(int &ex){
            std::cerr << "error: " << ex << std::endl;
        }
    }
}

int main(){
    std::thread t1{function, 10};
    std::thread t2{function, 2};

    t1.join();
    t2.join();
}