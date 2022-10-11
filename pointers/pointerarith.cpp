#include <string>
#include <vector>
#include <iostream>

int main(){
    // Aumentare il puntatore
    // Se ho un puntatore a int allora il ++
    // va avanti di sizeof(int)

    uint16_t v1[]{10,10,11,332};
    uint16_t *vet{v1};
    
    while(*vet != 332){
        std::cout << *vet << std::endl;
        vet++;
    }

    std::cout << std::endl << "-----------------" << std::endl;
    
    vet = v1;
    while(*vet != 332){
        std::cout << *vet++ << std::endl;
    }

    std::cout << std::endl << "-----------------" << std::endl;
    std::string s1{"Frank"};
    std::string s2{"Frank"};
    std::string s3{"James"};

    std::string *p1{&s1};
    std::string *p2{&s2};
    std::string *p3{&s3};

    std::cout << "p1 == p2: " << (p1 == p2) << std::endl;
    std::cout << "*p1 == *p2: " << (*p1 == *p2) << std::endl;


    return 0;
}