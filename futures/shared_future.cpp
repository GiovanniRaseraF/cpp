#include <future>
#include <thread>
#include <iostream>

using namespace std::chrono_literals;

std::promise<int> pp;
std::future<int> ff{pp.get_future()};

void create(std::promise<int> &prom){
    int i = 0;
    while(true){
        i++;

        std::cout << "calcolo il risultato" << std::endl;
        std::this_thread::sleep_for(2s);
        prom.set_value(i);
    }
}


void create2(){
    int i = 0;
    while(true){
        std::this_thread::sleep_for(2s);
        pp.set_value(i++);
        std::cout << "notified.." << std::endl;
        std::this_thread::sleep_for(2ms);

        pp = {};
        ff = {pp.get_future()};
    }
}


int main(){
    std::promise<int> prom;
    std::future<int> f{prom.get_future()};
    std::shared_future shared_fut{f.share()};


    std::thread t1{create2};

    t1.detach();

    while(true){
        while(ff.wait_for(500ms) != std::future_status::ready){
            std::cout << "sto aspettando" << std::endl;
        }

        int val = ff.get();
        std::cout << "valore: " << val << std::endl;
        //std::this_thread::sleep_for(2s);
    }
}