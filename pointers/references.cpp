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

    return 0;
}