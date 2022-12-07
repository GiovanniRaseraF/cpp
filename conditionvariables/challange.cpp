#include <iostream>
#include <thread>
#include <mutex>
#include <string>

using namespace std::chrono_literals;

bool canread = false;
std::mutex read_mux;
std::string data = "bello";

void setread(bool s){
    std::unique_lock<std::mutex> u{read_mux};
    canread = s;
}

std::lock_guard<std::mutex> getread(){
    return std::lock_guard<std::mutex>{read_mux};
}

void writer(){
    int a = 0;

    while(true){
        setread(false);

        std::this_thread::sleep_for(2s);
        data = "Hello: " + std::to_string(a++);

        setread(true);
    }
}

void reader(){
    while(true){
        {
         //   auto lock = getread();
            std::cout << data << std::endl;
        }
        std::this_thread::sleep_for(1s);
    }
}

int main(){
    std::thread w{writer};
    std::thread r{reader};

    w.join();
    r.join();
}