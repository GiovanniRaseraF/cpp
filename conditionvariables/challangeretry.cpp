#include <iostream>
#include <string>
#include <thread>
#include <mutex>

using namespace std::chrono_literals;
bool ready = false;
std::mutex canread;

std::lock_guard<std::mutex> wait(){
    while(!ready){}

    return std::lock_guard<std::mutex>(canread);
}

void setready(bool v){
    {
        std::lock_guard<std::mutex> l{canread};
        ready = v;
    }
}

void writer(){
    int a = 0;

    while(true){
        setready(false);

        std::this_thread::sleep_for(3s);
        std::cout << "writing.. " << std::endl;
        std::this_thread::sleep_for(3s);

        setready(true);
    }
}

void reader(){
    while(true){
        {
            auto t = wait();
            std::cout << "you can read the data" << std::endl;
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