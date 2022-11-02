/*
base class reference

Significa il riferimento & quado passo la variabile
by-reference
*/

#include <memory>
#include <vector>
#include <iostream>
#include <string>

class account{
    public: 
    double balance;
    
    virtual void say() const {
        std::cout << "account hello" << std::endl;
    }
    // Obbligatorio mettere il virtual distructor
    virtual ~account(){
        //std::cout << "account distructor" << std::endl;
    }
};

class savings : public account{
    public:
    virtual void say() const override{
        std::cout << "savings hello" << std::endl;
    } 

    virtual ~savings(){
        //std::cout << "savings distructor" << std::endl;
    }

};

void genericsay(const account &a){
    a.say();
}

int main(){
    account a;
    account &acc_ref = a;

    savings s;
    account &sav_ref = s;

    acc_ref.say();
    sav_ref.say(); 

    std::cout << "\n\n\nVector:" << std::endl;;

    genericsay(s);
}