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
    std::string name;
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
};

class player_efficient{
    public:
    std::string name;
    int age;

    // Questo tipo di inizializzazione è più efficiente siccome
    // l'oggeto viene inizializzato e subito prende i valori passati
    player_efficient(std::string n, int a) : name{n}, age{a}{}
};

int main(){
    std::string in = "Ineffi";
    std::string ef = "Effi";
    player_inefficient pineffi(in, 30);
    player_efficient peffi(ef, 1000);

    return 0;
}

