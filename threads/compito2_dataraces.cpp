#include <vector>
#include <algorithm>
#include <iostream>
#include <string>
#include <thread>
#include <algorithm>
#include <iterator>

int counter = 0;
constexpr int maxthreadincrement = 10000;

void increment_counter(const std::vector<bool>::iterator ended){
    for(int i = 0; i < maxthreadincrement; i++){
        counter++;
    }
    *ended = true;
}

int main(){
    std::vector<bool>f{
        false, false, false, false,
        false, false, false, false,
        false, false, false, false,
        false, false, false, false,
    };
    std::vector<std::thread> th{};
    
    // Thread creation
    for(auto i = f.begin(); i != f.end(); i++){
        th.push_back(std::thread{increment_counter, i});
    }

    // Join
    std::for_each(th.begin(), th.end(), [](std::thread &t){
        t.join();
    });

    // Waiting for all thread to finish
    while(!std::all_of(f.begin(), f.end(),[](bool v){return v == true;})){
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }

    // Counter print
    std::cout << "counter: " << counter << std::endl;
    if(counter != f.size() * maxthreadincrement){
        std::cout << "FAILED: accurend race condition" << std::endl;
    }else{
        std::cout << "PASSED: race condition not accured" << std::endl;
    }    

    return 0;
}