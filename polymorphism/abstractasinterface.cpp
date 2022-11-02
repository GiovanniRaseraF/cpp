#include <iostream>
#include <string>

class printable {
    friend std::ostream &operator<<(std::ostream &os, const printable &p){
        p.print(os);

        return os;
    }

    public:
    virtual void print(std::ostream &os) const = 0;
    virtual ~printable() {}
};

class account : public printable {
    public:
    virtual void print(std::ostream &os) const override {
        os << "account";
    }
    ~account(){}
};

int main(){
    account t;
    std::cout << t << std::endl;
}