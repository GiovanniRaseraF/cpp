#include <iostream>
#include <string>
#include <vector>
#include "utils.hpp"

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

bool account::deposit(double money){
    this->balance += money;
    PRINTLN("In deposit");

    return this->balance;
}

bool account::withdraw(double money){
    this->balance -= money;

    return this->balance;
}

int main(){
    account *frank_account = new account();

    frank_account->name = "Frank";
    frank_account->deposit(100);
    frank_account->withdraw(2);

    std::cout << frank_account->name << "money: " << frank_account->balance << std::endl;

    delete frank_account;

    // Con un player
    player gion;
    gion.name = "Giovanni";

    std::cout << gion.name << std::endl;

    return 0;
}