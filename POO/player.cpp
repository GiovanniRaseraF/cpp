#include <iostream>
#include <string>
#include <vector>

class player{
    public:
    // Attributi
    std::string name; // ha un default constructor
    int healt;
    int xp;

    // Metodi
    void talk(std::string const&);
    bool is_dead();
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

    return 0;
}