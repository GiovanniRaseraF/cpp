/*
Default Constructor Parameters

- Servono a semplificare il codice e avvolte riducono il numero di costruttori overridati

- si applica lo stesso principio che si applica con le funzioni normali, chiamate anche non-member 
    - le non-member sono le funzioni che non fanno parte di una classe
*/

#include <string>
#include <iostream>

class player_defconst_param{
    private:
    std::string name = "";
    int age = 0;

    public:
    // è possibile avere un solo costruttore con tutti i parametri
    player_defconst_param(std::string n = "None", int a = 1) : name{n}, age{a}{
        std::cout << "Default params on Constructor" << std::endl;
    }

};

int main(){
    player_defconst_param p{"Hello"};

    return 0;
}