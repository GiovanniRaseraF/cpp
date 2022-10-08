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

    int *p1{nullptr};
    double *p2{nullptr};
    unsigned long long *p3{nullptr};
    std::vector<std::string> *p4{nullptr};
    std::string *p5{nullptr};

    // Nel mac M1 i puntatori sono a 8 byte
    std::cout<< "sizeof p1:" << sizeof(p1) << std::endl;
    std::cout<< "sizeof p2:" << sizeof(p2) << std::endl;
    std::cout<< "sizeof p3:" << sizeof(p3) << std::endl;
    std::cout<< "sizeof p4:" << sizeof(p4) << std::endl;
    std::cout<< "sizeof p5:" << sizeof(p5) << std::endl;

    int score{10};
    double high_temp{100.7};

    int *score_ptr{nullptr};

    score_ptr = &score;
    std::cout << "Value of score is:" << score << std::endl;
    std::cout << "Address of score is:" << &score << std::endl;
    std::cout << "Value of score_ptr is:" << score_ptr << std::endl;

    std::cout << std::endl;
    return 0;
}