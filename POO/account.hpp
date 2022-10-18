#ifndef _ACCOUNT_H_
#define _ACCOUNT_H_

#include <string>

class account{
    private:
    double balance{0};
    public:
    std::string name;

    // Constructor
    account(std::string);

    public:
    double getBalance();
    void add(double);
    void sub(double);
};

#endif