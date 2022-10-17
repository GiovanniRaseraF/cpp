#include <iostream>
#include <string>
#include <vector>
#include <cassert>
#include "utils.hpp"

/*
Modificatori di accesso alla classe:
public:
    - accessibili in ovunque
private:
    - accessebile solo dai metodi della classe, oppure dai friend 
    della classe
protected:
    - usato nell'ereditarietà 


Questi modificatori permetto di implementare information hiding
*/


class player{
private:
    // Attributi
    std::string name{"generico"}; // ha un default constructor
    int health{100};
    int xp{0};
public:
    // Metodi
    player &setName(std::string new_name){
        this->name = new_name;
        return *this;
    }

    player &setHealth(const int new_health){
        assert(new_health >= 0 && new_health <= 100);

        this->health = new_health;
        return *this;
    }

    void talk(std::string const&);
    bool is_dead();

    friend std::ostream& operator<<(std::ostream &os, const player &pl){
        os << "player[" << pl.name << "," << pl.health << "]";

        return os;
    }
};

int main(){
    player pl;
    pl.setName("Giovanni").setHealth(10);

    std::cout << pl << std::endl;

    player *pl_ptr = new player();
    pl_ptr->setName("Federico").setHealth(12);

    std::cout << *pl_ptr << std::endl;

    delete pl_ptr;

    return 0;
}