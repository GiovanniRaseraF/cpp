/*/
Un'operazione su un intero non è atomica

ma ad esempio ++count 
può essere interrota siccome non è solo un'operazione ma è
anche una store dei dati 


posso far si che le fariabili siano di tipo atomic

*/

#include <atomic>
#include <vector>
#include <thread>
#include <iostream>

std::atomic<int> x{0};
int noatomic_x{0};

void add(){
    // se non usassi una variabile di tipo atomic
    // non conterei nello stesso modo
    for(int i = 0; i < 1000000; i++){
        ++x;
    }
}

void add_noatomic(){
    for(int i = 0; i < 1000000; i++){
        ++noatomic_x;
    }
}

int main(){
    std::cout << "atomic add x" << std::endl;
    std::vector<std::thread> ths{};

    for(int i = 0; i < 100; i++){
        ths.push_back(std::thread{add});
    }


    for(auto &t : ths)
        t.join();

    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << x << std::endl;


    std::cout << "no atomic x esample" << std::endl;
    std::vector<std::thread> ths_noatomic{};

    for(int i = 0; i < 100; i++){
        ths_noatomic.push_back(std::thread{add_noatomic});
    }


    for(auto &t : ths_noatomic)
        t.join();

    std::this_thread::sleep_for(std::chrono::seconds(1));
    std::cout << noatomic_x << std::endl;
}