#include <thread>
#include <exception>
#include <iostream>

void func_throw(){
    throw 0;
}

void func1(){
    func_throw();
}

void func2(){

    // L'eccezione va catturara in questo thread non nel main
    // altrimenti il programma termina
    std::cout << "Parto e chiamo una funzione" << std::endl;
    func1();
    std::cout << "Ho chiamato la funzione func1" << std::endl;
}

int main(){
    std::thread t1{func2};

    std::thread t2{[](){
        while(true){
            std::cout << "Hello" << std::endl;

            std::this_thread::sleep_for(std::chrono::seconds(1));
        }
    }};

    t1.join();
    t2.join();
}