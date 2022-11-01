#pragma once
#include <iostream>
#include <string>
#include "savings.hpp"

class trust : public savings{
    static constexpr const int MAXWITHDRAW{3};
    protected:
    int times_withdrawed;

    public:
    trust(std::string n, double b, double i) : savings{n, b, i}, times_withdrawed{0}{}
    trust() : trust{"Generic trust", 0, 1}{}

    bool withdraw(double ammount){
        if(times_withdrawed >= MAXWITHDRAW) 
            return false;
        
        times_withdrawed++;
        return savings::withdraw(ammount);
    }

    bool deposit(double ammount){
        return savings::deposit(ammount);
    }

    void reset(){
        times_withdrawed = 0;
    }

    friend std::ostream &operator<<(std::ostream &os, const trust &t){
        os << "[trust.name: " << t.name << "trust.balance: " << t.balance << ", trust.t_withdrawed: " << t.times_withdrawed << "]";
        return os;
    }
};