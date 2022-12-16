#include <mutex>
#include <vector>
#include <atomic>
#include <thread>
#include <iostream>
#include <memory>

class some_type {
public:
    some_type(){}
	void do_it() {
        std::cout << "sto facendo" << std::endl;
    } 
};

std::atomic<some_type*> ptr{nullptr}; 

void process() {
    if (!ptr.load()) {
        ptr = new some_type();
    }

    ptr.load()->do_it();
}

int main(){
    std::vector<std::thread> ths{};

    for(int i = 0; i < 1000; i++){
        ths.push_back(std::thread{process});
    }


    for(auto &t : ths)
        t.join();

    //std::this_thread::sleep_for(std::chrono::seconds(2));
}


