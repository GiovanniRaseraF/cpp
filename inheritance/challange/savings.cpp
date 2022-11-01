#include "savings.hpp"

bool savings::withdraw(double ammount){
    return account::withdraw(ammount);
}

bool savings::deposit(double ammount){
    double new_ammount = ammount * interest;

    return account::deposit(new_ammount);
}