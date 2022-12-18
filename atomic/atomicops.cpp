/*
Ci sono delle operazioni utili nel momento in cui creo dei tipi atomic

ad esempio se sto lavorando con dei puntatori posso fare: 

fetch_add() per fare un ++ 

fetch_sub() per fare un -- 

posso anche fare delle operazioni otomiche su operazioni logiche
*/

/*
Posso anche utilizzare degli atomic flag in cui ho a disposizioni solamente:
al possto di usare std::atomic<bool>

- clean() mette a false il frag
- test_and_set() mette il flag a true e ritorna il valore precedente
- operator=()

devo inizializzare il frag a false;

std::atomic_flag = ATOMIC_FLAG_INIT;
*/


#include <atomic>
#include <thread>
#include <iostream>

std::atomic_flag flag = ATOMIC_FLAG_INIT;

using namespace std::chrono_literals;
void task(int n){
    while(true){
        // computazionalemnte pesante
        // sto eseguendo un while per aspettare 
        // ma è una busy wait
        while(flag.test_and_set()){}

        // safe perche uso la semantica di aquire realiease semantics
        std::cout << "exec: " << n << std::endl;
        std::this_thread::sleep_for(2s);

        flag.clear();
    }
}

int main(){
    std::thread t1{task, 1};
    std::thread t2{task, 2};

    t1.join();
    t2.join();
}

