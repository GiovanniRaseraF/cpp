/*
Il problema è che se viene lanciata un'eccezione dopo la lock di un mutex
questo resta bloccato
nell'esempio:

il mutex ha dei wrapper per la RAII
il wrapper si chiama lock_guard
*/

#include <string>
#include <thread>
#include <mutex>
#include <exception>
#include <iostream>

std::mutex pmutex;
void print(std::string str){
    for(int i = 0; i < 5; i++){
        try {
            pmutex.lock();
            std::cout << str << std::endl;
            throw 1;
            pmutex.unlock();
            std::this_thread::sleep_for(std::chrono::milliseconds(50));
        } catch (int &ex){
 
            // Se entro in questo punt non rilacio mai il mutex
            // ovviamente posso anche mettere l'unlock
            std::cout << "ex: " << ex << std::endl;
        
            // Devo avere questo per far si che venga rilasciato il lock
            pmutex.unlock();
        }       
    } 
}

std::mutex mlock_print;

void printlock_guard(std::string str){
    for(int i = 0; i < 10; i ++){
        {
            // Utilizzo RAII
            std::lock_guard<std::mutex> lgprint(mlock_print);
            std::cout << str << std::endl;
            std::this_thread::sleep_for(std::chrono::milliseconds(50));
        }
    }
}

int main(){
    std::thread t1{print, "Hello"};
    std::thread t2{print, "cio"};

    t1.join();
    t2.join();


    std::thread t3{printlock_guard, "bell"};
    std::thread t4{printlock_guard, "ciao"};

    t3.join();
    t4.join();
}