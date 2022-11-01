#pragma once
#include <iostream>
#include <string>
#include "account.hpp"

class checking : public account{
    protected:
    double fee{1.5}; // euro per withdraw

    public:
    checking() : checking{"Generic Checking", 0}{}
    checking(std::string n, double b) : account{n, b}{}

    bool withdraw(double ammount);
    bool deposit(double ammount);

    // friend
    friend std::ostream &operator<<(std::ostream &os, const checking &c){
        os << "[checking.name: " << c.name << ", checking.fee: " << c.fee << ", checking.balance: " << c.balance << "]";
        return os;
    }
};