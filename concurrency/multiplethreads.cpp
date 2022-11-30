#include <iostream>
#include <thread>
#include <string>
#include <chrono>
#include <mutex>

std::mutex coutmutex;
void functionforthread(std::string message, int threadnumber, std::chrono::seconds delay){
    while(true){
        coutmutex.lock();
        std::cout << "T: " << threadnumber << ", says: " << message << std::endl;
        coutmutex.unlock();
        
        std::this_thread::sleep_for(delay);
    }
}

int main(){
    using namespace std::chrono_literals;
    std::thread t1{functionforthread, "Hello", 1, 11s};
    std::thread t2{functionforthread, "Bella", 2, 5s};
    std::thread t3{functionforthread, "Hey", 3, 3s};

    t1.join();
    t2.join();
    t3.join();
}