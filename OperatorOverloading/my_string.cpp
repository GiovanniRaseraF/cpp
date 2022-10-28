#include "my_string.hpp"

#include <iostream>
#include <string>



/*
Importante non confondere 
object initialization
con 
assignement 

inizializzazione è fatta con {}
assegnamento è fatto con =

*/

#ifdef MY_STRINGUNITTEST
int main(){
    
    my_string s1{"Hello"};
    my_string s2{s1};
    my_string s3{nullptr};
    
    std::cout << s1.c_str() << "   " << s2.c_str() << std::endl;
    std::cout << "S3:" << s3.c_str() << std::endl;


    my_string s4{"Ciao"};
    std::cout << "S4:" << s4 << std::endl;

    s4 = s2;
    std::cout << "S4:" << s4 << std::endl;

    my_string s5{"Bella"};
    s5 = my_string{"Come va"};

    std::cout << "S5:" << s5 << std::endl;

    s5 = "HelloAlleluia";
    std::cout << "S5:" << s5 << std::endl;


    // Sezione di add
    my_string s7 = s5 + s1;
    std::cout << "S7:" << s7 << std::endl;
    
    my_string s20 = s5 + "Hello" + "Hello";
    std::cout << "S20:" << s20 << std::endl;
    // Sezione di sub
    my_string s8 = s7 - s7;
    std::cout << "S8:" << s8 << std::endl;
    
    // Commpare
    my_string s10{"Ciao bello"};
    my_string s11{"Uffa"};
    my_string s12 = s10;

    bool compare12_10 = s12 == s10;
    bool dif12_11 = s12 < s11;

    std::cout << "s12 == s10?:" << (compare12_10 ? "true" : "false") << std::endl;
    std::cout << "s12 < s11?:" << (dif12_11? "true" : "false") << std::endl;


    // Input Output
    my_string nome1;
    int num = 0;
    std::cout << "Iserisci: "; std::cin >> nome1 >> num;
    std::cout << "nome1: " << nome1 << "num:" << num << std::endl; 

    
    return 0;
}
#endif