/*
Lista di Costruttori di inizializzazione
Constructor initialization list

- Fino ad ora i dati membri di una classe sono stati inizializzati 
nel body della classe

- Con la Constructor initialization list 
    - ho più efficienza
    - la lista segue direttamente la lista dei parametri
    - Inizializza i dati membri mentre l'oggetto è creato
    - l'ordine di inizializzazione è quello di dichiarazione nella classe

Se io usassi il metodo classico di inizializzazione
    - prima creo le variabili dell'oggetto e poi passo i valori
    - questa rende l'oggetto più lento a crearsi
*/

#include <string>
#include <iostream>

class player_inefficient{
    public:
    std::string name = "xxxxxxxxx";     // Qeusto viene inizializzato e poi sovrascritto
    int age;

    // L'inefficienza del codice è data dal fatto che
    // prima vengono inizializzati 
    // this->name{""};
    // this->age{48392};
    // e poi viene eseguito il body del codice
    // che quindi inserisce i valori
    // name = n;
    // age = a;
    player_inefficient(std::string n, int a){
        name = n;
        age = a;
    }

    friend std::ostream &operator<<(std::ostream &os, const player_inefficient &pinef){
        os << "Ineff: name:" << pinef.name << ", age:" << pinef.age;

        return os;
    }
};

class player_efficient{
    public:
    std::string name;
    int age;

    // Questo tipo di inizializzazione è più efficiente siccome
    // l'oggeto viene inizializzato e subito prende i valori passati
    player_efficient(std::string n, int a) : name{n}, age{a}{}
    player_efficient() : name{"None"}, age{0}{}

    friend std::ostream &operator<<(std::ostream &os, const player_efficient &peffi){
        os << "Ieffi: name:" << peffi.name << ", age:" << peffi.age;

        return os;
    }
};

int main(){
    std::string in = "Ineffi";
    std::string ef = "Effi";
    player_inefficient pineffi(in, 30);
    player_efficient peffi(ef, 1000);

    std::cout << pineffi << std::endl;
    std::cout << peffi << std::endl;

    return 0;
}

