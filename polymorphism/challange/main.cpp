#include "account.hpp"
#include <memory>

int main(){
    account a{"giovanni", 10};
    a.deposit(100000);
    a.withdraw(222);

    std::cout << a << std::endl;


    std::cout << "\n\n\n\n";
    trust t2{"Enrico", 2000, 1.3};
    std::cout << t2 << std::endl;  


    t2.withdraw(1); 
    std::cout << "1 t2.withdraw(1)-> " << t2 << std::endl;
    t2.withdraw(1); 
    std::cout << "2 t2.withdraw(1)-> " << t2 << std::endl;
    t2.withdraw(1);
    std::cout << "3 t2.withdraw(1)-> " << t2 << std::endl;

    t2.withdraw(1);
    std::cout << "4 t2.withdraw(1)-> " << t2 << std::endl;

    t2.reset();
    std::cout << "t2.reset()-> " << t2 << std::endl;
    t2.withdraw(1);
    std::cout << "1 t2.withdraw(1)-> " << t2 << std::endl;
    t2.withdraw(600); 
    std::cout << "2 t2.withdraw(600)-> " << t2 << std::endl;

    // Test con vettori
    std::cout << "\n\n\n\nVettori:\n";
    std::vector<std::shared_ptr<account>> acc_vec{
        std::make_shared<account>("Giovanni", 20),
        std::make_shared<trust>("Federico", 12, 3),
        std::make_shared<savings>("Ilario", 12, 1.2),
        std::make_shared<checking>("Luigi", 10)
    };

    for(const auto v : acc_vec){
        std::cout << *v << std::endl;
    }

}