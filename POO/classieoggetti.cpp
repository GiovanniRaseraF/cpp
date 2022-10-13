/*
Le classi sono create dal programmatore e sono dei blueprint
Posso nascondere le cose nella classe usando private

L'oggetto è un'istanza di una classe, all'interno dei valori

*/
#include <string>
#include <sstream>
#include <iostream>

class account
{
    public:
    // Attributi
    std::string name;
    int health;
    int xp;

    // Costruttore
    account(std::string const&n);
    account(const char *const n);

    // Metodi
    void talk(std::string text_to_say);
    bool is_dead();
    public:
    friend std::ostream& operator<<(std::ostream& os, const account& acc);

    std::string to_str();
};

std::ostream& operator<<(std::ostream& os, const account& acc)
{
    return os;
}

account::account(const char *const n)
{
    name = std::string(n);
}

account::account(std::string const&n)
{
    name = n;
}

std::string account::to_str()
{
    return name;   
}

int main()
{
    account c("Che bella la vita");
    
    std::cout << c.to_str();

    return 0;
}