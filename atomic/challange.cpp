#include <mutex>
#include <vector>
#include <atomic>
#include <thread>
#include <iostream>
#include <memory>

class some_type {
    some_type(){
        std::cout << "crea" << std::endl;
    }
public:
        static some_type* get(){
            static some_type *singleton = new some_type();
            return singleton;
        }
    	void do_it() {
        std::cout << "sto facendo" << std::endl;
    } 
};

std::atomic<int> t{0};
std::atomic<some_type*> ptr{nullptr}; 

void process() {
    // Lazy initialization
    if (!ptr.load()) {
        ptr = some_type::get();
    }

    ptr.load()->do_it();
}

void processdelay1(){
    // Lazy init with a lot of time to create the variable
    if (!ptr.load()) {
        if(t.load() == 0){
            t.fetch_add(1);
            std::this_thread::sleep_for(std::chrono::seconds(4));
        }
        ptr = some_type::get();
    }

    ptr.load()->do_it();
}

int main(){
    std::vector<std::thread> ths{};

    for(int i = 0; i < 4; i++){
        ths.push_back(std::thread{processdelay1});
    }

    for(auto &t : ths)
        t.join();
}


