#include "checking.hpp"

bool checking::deposit(double ammount){
    return account::deposit(ammount);
}

bool checking::withdraw(double ammount){
    double new_ammount = ammount + fee;

    return account::withdraw(new_ammount);
}

