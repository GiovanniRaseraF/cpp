/*
Il mutex deve essere visibile da tutti gli elementi della classe
*/

#include <iostream>
#include <thread>
#include <mutex>
#include <vector>

std::mutex print_mutex;
void print(int numero){
    print_mutex.lock();
    std::cout << "thread: " << numero << std::endl;
    print_mutex.unlock();
}

class my_vet{
    std::mutex push_mutex;
    public:
    std::vector<int> v;

    public:
    void push_back(const int &val){
        push_mutex.lock();
        v.push_back(val);
        push_mutex.unlock();
    }
};

void vetfunc(my_vet &vet, int index){
    for(int j = 0; j < 10000; j++)
        vet.push_back(index);
}

int main(){
    std::vector<std::thread> ths{};

    for(int i = 0; i < 10; i++){
        ths.push_back(std::thread{print, i});
    }    

    for(auto &t : ths){
        t.join();
    }


    std::this_thread::sleep_for(std::chrono::seconds(1));

    my_vet mv;
    std::vector<std::thread> ths1{};
    for(int i = 0; i < 10; i++){
        ths1.push_back(std::thread{vetfunc, std::ref(mv), i});
    }
    
    for(auto &t : ths1){
        t.join();
    }
    std::vector<int> s = mv.v;

    for(int i : s){
        std::cout << i << std::endl;
    }
    #if 0
#endif
}