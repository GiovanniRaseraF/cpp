#include <iostream>
#include <functional>
#include <string>
#include <vector>

int main(){
    std::vector<std::string> stooges {"Larry", "Moe", "Curly"};

    // Qui viene fatta una copi
    for (auto str : stooges){
        str = "Funny";
    }
    // Quindi quando lo stampo resta come era prima
    for (auto str : stooges){
        std::cout << str << std::endl;
    }

    std::vector<std::string> stooges2 {"Larry", "Moe", "Curly"};

    // Qui viene preso il riferimento
    for (auto &str : stooges2){
        str = "Funny";
    }

    // Quindi se lo stampo cambia il contenuto
    for (auto str : stooges2){
        std::cout << str << std::endl;
    }

    // Se non si devono modificare i dati meglio utilizzare const 
    // in questo modo
    for (auto const &str : stooges2){
        std::cout << str << std::endl;
    }

    // Riferimento ad un puntatore
    int hello[]{10, 11, 2, 23};

    auto &hello_ref{hello};

    for (auto &i : hello){
        std::cout << i << " ";
    }
    std::cout << std::endl;

    for (auto &i : hello_ref){
        std::cout << i << " ";
    }
    std::cout << std::endl;

    hello[2] = 2000;
    for (auto &i : hello_ref){
        std::cout << i << " ";
    }
    std::cout << std::endl;

    size_t len = 3;
    int *cc = new int[len];

    int *&cc_ref{cc};

    cc[2] = 10;

    for (int i{0}; i < len; i++){
        std::cout << cc_ref[i] << " ";
    }
    std::cout << std::endl;

    delete [] cc;
    return 0;
}