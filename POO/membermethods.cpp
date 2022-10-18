/*
Inmplementare il codice delle classi:
- Le funzioni delle classi hanno accesso agli attributi della classe e quindi 
ai valori dell'istanza che li chiama

- Possono essere implementati all'interno della dichiarazione della classe
    - questi hanno la particolarità di essere inline
    - ATTENZIONE questo va bene solo se sono molto corti

- Posso poi farlo fuori dalla classe

- Posso farlo in più file
*/

class accounttest {
    private:
    double balance;
    public:
    // automaticamente inline
    void set_balance(double b){
        balance = b;
    }

    void set_newBalance(double b);
};

void accounttest::set_newBalance(double b){
    balance += b;
}

#include <iostream>
#include "account.hpp"

int main(){
    account acc("Giovanni");
    acc.add(100);

    std::cout << acc.getBalance() << std::endl;

    ////
    accounttest test;
    test.set_balance(10);

    

    return 0;
}
