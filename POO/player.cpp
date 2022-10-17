#include <iostream>
#include <string>
#include <vector>

class player{
    public:
    // Attributi
    std::string name{"generico"}; // ha un default constructor
    int healt{100};
    int xp{0};

    // Metodi
    void talk(std::string const&);
    bool is_dead();
};

class account{
    // Attributi
    public:
    // posso inizializzare i valori 
    std::string name{"generico"};
    double balance{0.0};

    // Metodi
    bool deposit(double);
    bool withdraw(double);
};

int main(){
    player frank;
    player hero;

    player *enemy {nullptr};
    enemy = new player;

    delete enemy;

    // Posso fare anche array di oggeti
    // In questo caso viene fatta una copia dei due oggetti
    player players[]{frank, hero};

    //std::cout << &frank << " " << &(players[0]) << std::endl;

    frank.healt = 1111;

    // Invece in questo modo se cambio il contenuto cambia anche nel vettore
    player *players_ptr[]{&frank, &hero};

    frank.healt = 22222;

    // Con il debugger vedo che hanno lo stesso valore sial il vettore alla
    // posizione 0 che frank 


    ////
    std::vector<player> player_vec{frank, hero};

    // Gli elementi sono delle copie
    player_vec.push_back(hero);

    /// a
    account frank_account;
    account jim_account;

    return 0;
}