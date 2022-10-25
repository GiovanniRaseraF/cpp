/*
Membri static nell classi
- se viene dichiarata static allora appartiene alla classe non all'oggeto
- tutti vedono lo stesso valore

Le funzioni delle classi possono essere dichiarate static
- sono indipendenti dall'oggetto, questo vuol dire che non gli viene passato this
- sono chiamate tramite il nome della classe
*/
#include <iostream>
class Player{
    private:
    static int num_players;
    public: 
    Player();
    static int get_num_players();
    ~Player(){
        num_players--;
    }
};

// Inizializzazione del mebro statico della classe
int Player::num_players = 0;
int Player::get_num_players(){
    return num_players;
}

Player::Player(){
    num_players++;
}

int main(){
    Player p;
    Player c;
    std::cout << Player::get_num_players() << std::endl;
}