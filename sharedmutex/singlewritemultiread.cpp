#include <thread>
#include <iostream>
#include <mutex>
#include <vector>
#include <string>
#include <shared_mutex>
/*
Shared mutex
*/
using namespace std::chrono_literals;

std::shared_mutex sm;

void write(int i){
    std::lock_guard<std::shared_mutex> lk{sm}; // Write thread hax exclusive lock
    // Qui posso scirvere nella variabile
    std::cout << "Writing: " << i << std::endl;

    std::this_thread::sleep_for(1s);
}

void read(int i){
    std::shared_lock lk{sm}; // Reading thread has shared lock
    std::cout << "Reading: " << i << std::endl;
}

int main(){
    std::vector<std::thread> threads;

    for(int i = 0; i < 10; i++){
        threads.push_back(std::thread{read, i});
    }

    threads.push_back(std::thread{write, 11});

    for(int i = 0; i < 10; i++){
        threads.push_back(std::thread{write, i + 11});
    }
    
    threads.push_back(std::thread{write, 30});

    for(auto &t : threads)
        t.join();
}
