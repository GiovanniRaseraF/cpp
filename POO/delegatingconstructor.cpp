/*
Molte volte il codice dei costruttori è uguale in tutte le inizializzazioni

- Il codice duplicato porta avere errori nel codice

- c++ mette a disposizione i costruttori delegati
    - codice per un costruttore può chiamerte un'altro nell'initializatio list
    - previene la riscrittura di codice duplicato

*/
#include <iostream>
#include <string>

class player_effi_delegate{
    private:
    std::string name = "xxx";
    int age = 0;

    public:
    // il costruttore a cui si passano tutti gli argomenti vine utilizzato da tutti gli altri
    // in modo da non riscrivere ogni volta il codice
    player_effi_delegate(std::string n, int a) : name{n}, age{a}{
        std::cout << "Arg-constructor" << std::endl;
    }

    // Attenzione in questo caso prima vine eseguito il body di 
    // costruttore con tutti i parametri
    player_effi_delegate() : player_effi_delegate{"None", 0}{
        std::cout << "NO-Arg-constructor" << std::endl;
    }
    
};

int main(){
    player_effi_delegate ped;

    return 0;
}