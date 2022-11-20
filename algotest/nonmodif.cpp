#include "test.hpp"
#include <vector>
#include <functional>
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <list>
#include <string>

template <typename T>
void printto(std::ostream &os, std::vector<T> &vet, std::string name){
    os << name+":" << "[";
    std::for_each(vet.begin(), vet.end(), [&os](const T &v){
        os << std::setw(3) << v << " "; 
    });
    os << "]";
}

int main(){
    std::cout << "Test di all_of, any_of, none_of" << std::endl;
    std::vector<int> values1{1, 2, 3, 4, 5, 6, 89, 100, 7, 12, 2, 4, 5};

    // Controllo se il predicato vale per tutti i valori del mio vector
    printto(std::cout, values1, "values1"); std::cout << std::endl;
    // all_of: controllo che tutti siano pari
    TEST(
        std::all_of(values1.begin(), values1.end(), [](const int v){return v * 2 == 0;}), 
        false,
        "all_of: non sono tutti pari"
    );

    // any_of: controllo che almeno uno sia lungo 3 lettere
    TEST(
        std::any_of(values1.begin(), values1.end(), [](const int v){
            return v / 100 >= 1;
        }), 
        true,
        "any_of: un elemento è lungo tre numeri: il 100"
    );

    // none_of: controllo che nessuno sia divisibile per 123
    TEST(
        std::none_of(values1.begin(), values1.end(), [](const int v){
            return v * 123 == 0;
        }),
        true,
        "none_of: nessuno degli elementi è divisibile per 123"
    );

    // none_of: controllo che nessuno sia divisibile per 2
    TEST(
        std::none_of(values1.begin(), values1.end(), [](const int v){
            return v % 2 == 0;
        }),
        false,
        "none_of: almeno un elemento è divisibile per 2"
    );
    
    // range
    std::cout << "\n\n\n";
    std::cout << "Test di ranged all_of, any_of, none_of" << std::endl;

    printto(std::cout, values1, "values1"); std::cout << std::endl;

    //ranges::any_of: 

    // For each element inthe array 
    std::cout << "\n\n\n";
    std::cout << "Test di count, count_it" << std::endl;

    printto(std::cout, values1, "values1"); std::cout << std::endl;

    // Conto il numero di volte che appare il 4
    TEST(
        std::count(values1.begin(), values1.end(), 4),
        2,
        "count, il 4 è presente 2 volte"
    );

    // Conto il numero di numeri pari 
    TEST(
        std::count_if(values1.begin(), values1.end(), [](const int v){
            return v % 2 == 0;
        }),
        7, 
        "count_if, ci sono n valori positivi"
    );


}