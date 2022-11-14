/*
Generico programming:
Scrivere codice che funziona con diversi tipi di algomenti, 
sempre se questi argomenti rispettano i requisiti sintattici e semantici 

- Macros - Fare molta attenzione

- Function template

- Class templates
*/

// Macros
#include <iostream>
#define MAX_SIZE 100

#define x2(val) val * 2
#define MAX(a, b) ((a > b) ? a : b)

int main(){
    std::cout << x2(100) << std::endl;
    std::cout << MAX(123, 324) << std::endl;

    
}