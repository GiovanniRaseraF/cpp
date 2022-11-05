#pragma once
#include <iostream>
#include <string>
#include <memory>
#include <vector>
#include <exception>

// Exceptions
class NegativeBalanceException : public std::exception{
    public:
    virtual const char* what() const noexcept override{
        return "Negative Balance inserted";
    }
};

class NonSufficientFundsExceptio : public std::exception{
    public:
    virtual const char* what() const noexcept override{
        return "Funds not Sufficient";
    } 
};


// Permette di stampare
class i_printable{
    friend std::ostream &operator<<(std::ostream &os, const i_printable &ip){
        ip.print(os);

        return os;
    }
    protected:
    virtual ~i_printable() = default;
    virtual void print(std::ostream &os) const = 0;
};

class i_account : public i_printable{
    public:
    virtual bool withdraw(double ammount) = 0;
    virtual bool deposit(double ammount) = 0;
    virtual ~i_account() = default;
    protected:
    virtual void print(std::ostream &os) const = 0;   
};

class account : public i_account{
    protected:
    std::string name;
    double balance;
    
    public:
    account(std::string n, double b) : name{n}, balance{b}{
        if(balance < 0)
            throw NegativeBalanceException();
    }
    
    virtual bool withdraw(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();
        double new_balance = balance - ammount;
        if(new_balance < 0 || ammount < 0)
        // No changes to the balance
            throw NonSufficientFundsExceptio();

        balance = new_balance;
        return true;
    }

    virtual bool deposit(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();

        balance += ammount;
        return true;
    }

    virtual ~account() = default; 
    protected:
    virtual void print(std::ostream &os) const override {
        os << "account.name: " << name << ", balance: " << balance;
    }
};

class savings : public account{
    protected:
    double interest;
    public:
    savings(std::string n, double b, double i) : account{n, b}, interest{i}{}

    virtual bool withdraw(double ammount) override {
        return account::withdraw(ammount);
    } 

    virtual bool deposit(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();
        double new_ammount = ammount * interest;

        return account::deposit(new_ammount);
    }

    virtual ~savings() = default; 
    protected:
    virtual void print(std::ostream &os) const override {
        os << "savings.name: " << name << ", balance: " << balance;
        os << ", int: " << interest;
    }
};

class checking : public account {
    protected:
    double fee{1.5};

    public:
    checking(std::string n, double b) : account{n, b}{}

    virtual bool deposit(double ammount) override {
        return account::deposit(ammount);
    }

    virtual bool withdraw(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();
        double new_ammount = ammount + fee;

        return account::withdraw(new_ammount);
    } 

    virtual ~checking() = default; 
    protected:
    virtual void print(std::ostream &os) const override {
        os << "checking.name: " << name << ", balance: " << balance;
        os << ", fee: " << fee;
    }
};

class trust : public savings {
    static constexpr const int MAXWITHDRAW{3};
    protected:
    int times;

    public:
    trust(std::string n, double b, double i) : savings{n, b, i}, times{0}{}

    virtual bool withdraw(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();
        if(times >= MAXWITHDRAW) 
            return false;
        
        // balance : 100 = ammount : x;
        // x = 100 * ammount / balance;
        double percent = 100 * ammount / balance;
        if(percent >= 20)
            return false;

        times++;
        return savings::withdraw(ammount);
    }

    virtual bool deposit(double ammount) override {
        if(ammount < 0)
            throw NegativeBalanceException();
        if(ammount >= 5'000)
            ammount += 50;
        return savings::deposit(ammount);
    }

    void reset(){
        times = 0;
    }

    virtual ~trust() = default; 
    protected:
    virtual void print(std::ostream &os) const override {
        os << "trust.name: " << name << ", balance: " << balance;
        os << ", interest: " << interest << ", times: " << times;
    }
};