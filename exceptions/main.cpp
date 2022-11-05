/*
Gestione delle eccezioni

Cosa è un'eccezione ? 
    -

Deve essere utilizzato per codice syncrono non asyncrono 

Cosa provoca eccezioni: 
    - apertura di fale non esistenti
    - Salvataggio con memoria finita
    - allocare la memoria

Sintassi del c++
throw:
    - lancia un'eccezione

try{code}
    - cerca di vedere se il codice lancia un'eccezione

catch(exception){}
    - codice per gestire l'eccesione

*/

#include <exception>
#include <iostream>

int main(){
    double denom{0};
    std::cin >> denom;

    try{
        if (denom == 0)
            throw 0;
        double val = 234 / denom;
        // qui posso usare val 
    }catch(int &ex){
        std::cerr << "non posso dividere per zero" << std::endl;
    }

    std::cout << "Continuo il programma" << std::endl;

    std::cout << 12.0 / 0 << std::endl;

    std::cout << "\n\n\n Test2\n";

    double nom{0}, den{0};
    std::cout << "nom: "; std::cin >> nom;
    std::cout << "den: "; std::cin >> den;

    try{
        if (den == 0)
            throw 0;
        
        double result = static_cast<double>(nom) / den;
        std::cout << "result: " << result << std::endl;
    }catch(int &ex){
        std::cerr << "errore divisione per zero" << std::endl;
    }
    std::cout << "Continue" << std::endl;

}