#include <thread>
#include <string>
#include <iostream>
#include <mutex>

// Utilizzo di Recursive mutex
/*
Se un processo prova a fare la lock su un mutex che è già stato loccato 
questo è indefinito e potrebbe portare ad un comportamento indefinito

questo può essere risolto utilizzando std::recursive_mutex

Posso chiamare la lock() ripetutamente
    - per ogni chiamata a lock() ce ne deve essere una a unlock()

Solitamente è meglio non usarlo, meglio migliorare il proprio codice
*/

std::recursive_mutex r_mutex;
int bad_factorial(int num){
    if(num <= 1){
        std::cout << "return 1" << std::endl;
        return 1;
    }

    std::lock_guard<std::recursive_mutex> lg_req{r_mutex};
    int retval = num * bad_factorial(num - 1);
    std::cout << "return " << retval << std::endl;

    return retval;
}
int main(){

    std::thread t1{bad_factorial, 5};

    t1.join();
}