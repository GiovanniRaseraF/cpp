#include <thread>
#include <random>
#include <iostream>

// Qesta è una variabile collegata ad un solo thread
thread_local std::mt19937 mt;

void func(){
    std::uniform_real_distribution<double> dist(0, 1);

    for(int i = 0; i < 10; i++){
        std::cout << dist(mt) << ", ";
        std::flush(std::cout);
    }
}

int main(){
    std::cout << "Creazione di 10 num random: " << std::endl;
    std::thread t1{func};
    t1.join();

    std::cout << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(2));

    std::cout << "Creazione di 10 num da secondo thread:" << std::endl;
    std::thread t2{func};
    t2.join();

}