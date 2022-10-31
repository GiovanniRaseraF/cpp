#include <iostream>
#include <string>

class account{
    protected:
    double balance{0};
    public:
    account() : balance{0}{}
    account(double b) : balance{b}{}
    void withdraw(double a){
        std::cout << "account.withdwraw()" << std::endl;
        balance -= a;
    }
    void deposit(double a){   
        std::cout << "account.deposit()" << std::endl;
        balance += a;
    }
    
    friend std::ostream &operator<<(std::ostream &os, const account &a){
        os << "Account.balance: " << a.balance;
        return os;
    }
};

class savings : public account{
    protected:
    double interest{1.2};

    public:
    // void deposit(double amo){
    //     std::cout << "savings.deposit()" << std::endl;
    //     amo *= interest;
    //     account::deposit(amo);
    // }

    savings() : savings{0, 1.2}{

    }

    savings(double b, double i) : account{b}, interest{i}{

    }

    void deposit(double am){
        std::cout << "savings.deposit()" << std::endl;
        am *= interest;
        account::deposit(am);
    }

    void withdraw(double am){
        std::cout << "savings.withdraw()" << std::endl;
        am *= interest;
        account::withdraw(am);
    } 
    
    friend std::ostream &operator<<(std::ostream &os, const savings &s){
        os << "Savings.interest: " << s.interest << " balance: " << s.balance << std::endl;
        return os;
    }
};

int main(){
    /*
    Bisogna stare attenti:
    a quali funzioni vengono chiamate
    */
    account a1;
    a1.deposit(100);     // account::deposit

    savings s1;
    s1.deposit(2000);    // savings::deposit

    account *acc_ptr = new savings();
    acc_ptr->deposit(200);       // Quale chiamo ? 
                                // lo decido a runtime

    std::cout << std::endl;

    // Savings
    savings s2{10, 11};
    s2.deposit(200);
    std::cout << s2 << std::endl;
}