#include <iostream>
#include <string>
#include "account.hpp"
#include "savings.hpp"
#include "checking.hpp"
#include "trust.hpp"

int main(){
    std::cout << std::endl << std::endl << "Account Tests" << std::endl;
    account a1;
    account a2{"Giovanni", 100};
    std::cout << a1 << std::endl << a2 << std::endl;

    a1.deposit(2000);
    std::cout << "a1.deposit(2000)-> " << a1 << std::endl;
    
    a2.withdraw(100);
    std::cout << "a2.withdraw(100)-> " << a2 << std::endl;

    a1.withdraw(3000);
    std::cout << "a1.withdraw(3000)-> " << a1 << std::endl;


    std::cout << std::endl << std::endl << "Savings Tests" << std::endl;
    // savings
    savings s1;
    savings s2{"Federico", 100, 1.4};
    std::cout << s1 << std::endl << s2 << std::endl; 

    s1.deposit(2000);
    std::cout << "s1.deposit(2000)-> " << s1 << std::endl;

    s2.deposit(2000);
    std::cout << "s2.deposit(2000)-> " << s2 << std::endl;

    s2.withdraw(500);
    std::cout << "s2.withdraw(500)-> " << s2 << std::endl;


    std::cout << std::endl << std::endl << "Checking Tests" << std::endl;
    // checking
    checking c1;
    checking c2{"Valentina", 1000};
    std::cout << c1 << std::endl << c2 << std::endl; 

    c2.withdraw(1000);
    std::cout << "c2.withdraw(1000)-> " << c2 << std::endl;

    c2.withdraw(998.5);
    std::cout << "c.withdraw(998.5)-> " << c2 << std::endl;


    std::cout << std::endl << std::endl << "Trust Tests" << std::endl; 
    trust t1;
    trust t2{"Enrico", 2000, 1.3};
    std::cout << t1 << std::endl << t2 << std::endl;  


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
    
    return 0;
}