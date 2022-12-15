#include <iostream>
#include <future>
#include <thread>

using namespace std::chrono_literals;

void calc(std::promise<int> &prom){
        std::this_thread::sleep_for(3s);

        prom.set_value(300);
}

void reader(std::future<int> &f){
        while((f.wait_for(200ms)) != std::future_status::ready){
            std::cout << "waiting for data..." << std::endl;
        }
    
        int value = f.get();
        std::cout << "value: " << value << std::endl;
}

int main(){
    while(true){
        std::promise<int> prom{};
        auto fut{prom.get_future()};

        std::thread t_calc_val{calc, std::ref(prom)};
        std::thread t_read{reader, std::ref(fut)};

        t_calc_val.join();
        t_read.join();
    }
    
}