#include <parallel/algorithm>
#include <thread>
#include <algorithm>
#include <numeric>
#include <chrono>
#include <functional>
#include <execution>
#include <iostream>
#include <random>


/*
Posso avere delle diverse politiche di esecuzione:
- Sequenziale:
    - come sempre un elemento alla volta
- Vectorizzata:
    - simb: single instruction multiple data
- Parallelizzata:
    - Piu di un dato alla volta e più processi
- Parallelizzata- vettorizzata
    - Più processi che eseguono simb

*/

int main(){
    std::mt19937 mt(time(nullptr));
    std::vector<float>v(5000000000, 1);
    for(float &i : v){
        i = mt();
    }
    // reduce con vettorizzazione
    //int res = std::reduce(std::execution::par_unseq, v.begin(), v.end());

    //std::cout << "res: " << res << std::endl;

    // Posso anche provare a creare una data race
    std::sort(std::execution::par_unseq, v.begin(), v.end());

    std::cout << "hello";
    //for (int i : v){
        //std::cout << i << " "; 
    //}
}