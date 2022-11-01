#include "account.hpp"

bool account::withdraw(double ammount){
    double new_balance = balance - ammount;
    if(new_balance < 0 || ammount < 0)
        // No changes to the balance
        return false;

    balance = new_balance;
    return true;
}

bool account::deposit(double ammount){
    if(ammount < 0)
        return false;

    balance += ammount;
    return true;
}