#pragma once
#include <iostream>
#include <string>
#include <vector>

class account{
    protected:
    std::string name;
    double balance;

    public:
    account() : account{"Generic Account", 0.0}{}
    account(std::string n, double b) : name{n}, balance{b}{}
    account(const account &to_copy) : account{to_copy.name, to_copy.balance}{}

    bool withdraw(double ammount);
    bool deposit(double ammount);

    friend std::ostream &operator<<(std::ostream &os, const account &a){
        os << "[account.name: " << a.name << ", account.balance: " << a.balance << "]";

        return os;
    }
};