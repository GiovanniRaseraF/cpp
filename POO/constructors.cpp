/*
Sono dei membri speciali della classe

Sono invocati durante la creazione di un oggetto

Utilizzati per l'inizializzazione

Stesso nome della classe

Non hanno tipo di ritorno specificato

Possono essere overridati

///// Distruttore
Sono invocati alla fine del ciclo di vita dell'oggetto

Non ha senso passare argomenti ad un distruttore

Utilizzato per rilasciare la memoria
*/
#include <iostream>
#include <string>
#include <sstream>

class player{
    private:
    std::string name;
    int health;
    int xp;

    public:
    // Costruttore no arg
    player();
    // Costruttore con un argomento
    player(std::string n);
    // Costruttore con tutti gli argomenti
    player(std::string n, int health, int xp);

    // Distruttore
    ~player();
};

player::player(){
    std::cout << "Costruttore senza argomenti" << std::endl;
}

player::player(std::string n){
    name = n;
    std::cout << "Costruttore con stringa" << std::endl;
}

player::player(std::string n, int h, int x):name{n}, health{h}, xp{x}{
    std::cout << "Costruttore con tutti gli argomenti" << std::endl;
}

player::~player(){
    std::cout << "Distruttore" << std::endl;
}


int main(){
    {
        player p1;
        player p2("Giovanni");
        player p3("Federico", 10, 11);
    }

    player *p4_ptr = new player();
    delete p4_ptr; 
}