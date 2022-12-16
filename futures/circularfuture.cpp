#include <thread>
#include <iostream>
#include <vector>
#include <future>
using namespace std::chrono_literals;

void readdata(std::future<int> &&f){
    f.wait();

    int value = f.get();
    std::this_thread::sleep_for(1s);
    std::cout << value << std::endl;
}

int main(){
    int i = 0;
    while(true){
        i++;
        std::promise<int> prom{};
        std::future<int> fut{prom.get_future()};

        std::thread t1{readdata, std::move(fut)};
        t1.detach();

        //std::cout << "start caluculation" << std::endl;
        std::this_thread::sleep_for(500ms);
        //std::cout << "new result" << std::endl;

        prom.set_value(i);
    }
}