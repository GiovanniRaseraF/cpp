/*
Un dead lock significa che un thread o più non possono andare avanti

Ad esempio quando è delle dipendente circolari tra i lock

UN BUON APPROCCIO PER CERCARE DI EVITARE I DEADLOCK E QUELLO DI:
    chiamare un lock nello stesso ordine in tutti i threads
*/

#include <iostream>
#include <thread>
#include <mutex>

std::mutex mux1, mux2;
// Simulazione di un deadlock
void func1(){
    std::unique_lock<std::mutex> lk1{mux1};
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::unique_lock<std::mutex> lk2{mux2};
}

void func2(){
    std::unique_lock<std::mutex> lk1{mux2};
    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::unique_lock<std::mutex> lk2{mux1};
}

int main(){
    std::thread t1{func1};
    std::thread t2{func2};

    t1.join();
    t2.join();
}