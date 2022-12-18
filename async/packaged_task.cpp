/*
Utilizzo std::packaged_task che offre un'astrazione di piu alto livello 

Associa una funzione con un std::promise

un std::packaged_task rappresenta un'operazione asincrona
    - quando viene chiamata e esegueta la funzione il risultato viene salvano in una
    promise

    - è possibile avere il valore ritornato grazie alla future associata

/*/
#include <thread>
#include <functional>
#include <future>
#include <iostream>

void waitforit(std::future<uint8_t> &&f){
    f.wait();

    int value = f.get();
    std::cout << value << std::endl;
}

int main(){
    std::packaged_task<uint8_t(uint8_t, uint8_t)> task(
        [](uint8_t a, uint8_t b){
            std::this_thread::sleep_for(std::chrono::seconds(a+b));

            return a+b;
        }
    );

    std::future<uint8_t> fut{task.get_future()};

    std::thread computation{std::move(task), 1, 1};
    std::thread resultwait{waitforit, std::move(fut)};

    computation.join();
    resultwait.join();

    while(true){
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
}