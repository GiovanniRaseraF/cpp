/*
Setting di allineamento dell'outiput


*/
#include <iostream>
#include <iomanip>
#include <string>

int main(){
    // default
    double num {1234.6578};
    std::string hello{"Hello"};

    std::cout << num << std::endl;
    std::cout << hello << std::endl;

    // setw
    std::cout << std::setw(10) << num << hello << std::endl;

    std::cout   << std::setw(10) << num 
                << std::setw(10) << hello 
                << std::setw(10) << hello << std::endl;
    
    std::cout   << std::setw(10)
                << std::left
                << num          // funzina solo per questo elemento
                << hello << std::endl;
    
    std::cout  << std::setw(10) << num
                << std::setw(10) << std::right << hello
                << std::setw(10) << std::right << hello << std::endl;
            
    std::cout << std::setfill('-');
    std::cout << std::setw(10) << num
        << hello << std::endl;

    
    std::cout << std::setfill('*');
    std::cout << std::setw(10) << num   
        << std::setfill('-') << std::setw(10) << hello << std::endl;
}