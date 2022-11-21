/*
Corso di multithreading in c++ 

Come mai serve imparare il multithreading ? 
- Utilizzo al 100% gli hardware moderni
- Faccio diventare i programmi più responsive
- Tutto sta diventanto threaded


*/

#include <string>
#include <iostream>
#include <chrono>
int main(){
    int x{7};
    std::string s{"Hello"};

    double c {7.7};
    //int cc{7.7};    // non lo posso fare 


    std::chrono::seconds s1;
    using namespace std::literals;
    2s;
    2ms;
    2ns;

    // Espressioni lambda
    auto l = [](){std::cout << "Hello" << std::endl;};

    l();

}