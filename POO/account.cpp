#include "account.hpp"

account::account(std::string n){
    name = n;
}

void account::add(double b){
    balance += b;
}

void account::sub(double b){
    balance -= b;
}

double account::getBalance(){
    return balance;
}