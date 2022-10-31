/*
Composizione permette di implemntare l'idea di 
- AVERE
    - Persona ha account
    - Player ha un Special atta
*/
#include <string>
#include <iostream>

class person{
    private: 
    std::string name;       // Composition

};

class account{
    public:
    double balance;
    std::string name;

    account() : balance{0}, name{"Account"}{}

    void deposit(double ammount){
        std::cout << "Account.Deposited: " << ammount << std::endl;
    }
    void withdraw(double ammount){
        std::cout << "Account.Withdrawed: " << ammount << std::endl;
    } 
};

class savings : public account{
    public:
    double interest_rate;

    /// @brief Questo metodo chiama il costruttore di account
    savings() : interest_rate{3.0} {}

    void deposit(double ammount){
        std::cout << "Savings.Deposited: " << ammount << std::endl;
    }

    void withdraw(double ammount){
        std::cout << "Savings.Withdrawed: " << ammount << std::endl;
    }
};

int main(){
    account a1;
    a1.deposit(100);

    savings s1;
    s1.deposit(3000); 
}
/*
savings è la classe derivata da account

Tre tipi di ereditarietà
- public    IS A
- private   HAS a base in term of
- protected  HAS a in term of im
*/