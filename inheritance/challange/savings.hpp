#pragma once
#include <iostream>
#include <string>
#include "account.hpp"

class savings : public account{
    protected:
    double interest;
    public:
    savings() : account{}, interest{1}{}
    savings(double i) : account{}, interest{i}{}
    savings(std::string n, double b, double i)
        : account{n, b}, interest{i}{}
    savings(const savings &to_copy) : account{to_copy}, interest{to_copy.interest}{}

    bool withdraw(double ammount);
    bool deposit(double ammount);

    friend std::ostream &operator<<(std::ostream &os, const savings &s){
        os << "[savings.name: " << s.name << ", savings.interest: " << s.interest << ", savings.balance: " << s.balance << "]";
        return os;
    }

};