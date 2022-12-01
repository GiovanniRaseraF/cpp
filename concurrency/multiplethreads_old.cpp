#include <vector>
#include <iostream>
#include <thread>
#include <mutex>
std::mutex m1{};
void hello(){
    while(true){
        m1.lock(); 
        std::cout << "Hello from thread: " << std::this_thread::get_id() << std::endl;
        m1.unlock();
        std::this_thread::sleep_for(std::chrono::seconds(2)); 
    }
    
}

int main(){
    /*
    std::thread t1{hello};
    std::thread t2{hello};
    std::thread t3{hello};

    t1.join();
    t2.join();
    t3.join();
    */
    std::vector<std::thread> vet_threads{};
    for(int i = 0; i < 10; i++)
        vet_threads.push_back(std::thread{hello});
    
    for(int i = 0; i < 10; i++){
        std::thread &t = vet_threads[i];
        t.join();
    }

    for(auto &i : vet_threads){
        std::cout << i.get_id() << std::endl;
    }

    while(true){
        std::this_thread::sleep_for(std::chrono::seconds(3));
    }

}