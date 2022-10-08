#include <iostream>
#include <vector>
#include <string>

int main()
{
    uint64_t num{10};

    std::cout << "Value of num is:" << num << std::endl;
    std::cout << "Sizeof of num is:" << sizeof(num) << std::endl;
    std::cout << "Address of num is:" << &num << std::endl;

    // Dichiarazione di un puntatore
    uint64_t v[1];
    uint64_t *p = v;
    *p = 20;

    std::cout << "Value of p is:" << p << std::endl; // Dati inutili
    std::cout << "Internal value of p is:" << *p << std::endl;
    std::cout << "First value of p is:" << v[0] << std::endl;
    std::cout << "Address of p is:" << &p << std::endl;
    std::cout << "Sizeof of p is:" << sizeof(p) << std::endl;

    return 0;
}