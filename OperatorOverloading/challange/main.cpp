#include <iostream>
#include "my_string.hpp"

int main(){
    my_str s1 = "Hello";
    my_str s2{s1};

    std::cout << s1 << " " << s2 << std::endl;

    my_str s3{"Ciao come stai"};
    my_str s4{"Bella vita"};

    s4 = s3;
    std::cout << s3 << " " << s4 << std::endl;

    my_str s5{"Hello"};
    s5 = my_str{"Uffa non so che fare"};
    std::cout << s5 << std::endl;


    my_str s7 = s1 + s4;
    std::cout << s7 << std::endl;


    my_str s8 = -s7;
    std::cout << s8 << std::endl;

    my_str s9{"Bella"};
    s9 = s9 * 3;
    std::cout << s9 << std::endl;

    my_str s10{"BellaAA"};
    my_str s11 = s10++;
    std::cout << s11 << " " << s10 << std::endl;

    my_str s20{"Ciao come VVAv"};
    my_str s21 = ++s20;
    std::cout << s21 << " " << s20 << std::endl;

    // Operators *=
    my_str s30{"Hello"};
    s30 *= 4;
    std::cout << s30 << std::endl; 

    my_str s40{"Ciao bello"};
    s40 += s30;
    std::cout << s40 << std::endl;

    // Comparison
    my_str s50{"Ciao"};
    bool s50eq = s50 == s50;
    std::cout << "s50 == s50:" << (s50eq? "true" : "false") << std::endl;

    my_str s60{"Abbbb"};
    bool com = s50 < s60;
    std::cout << "s50 < s60: " << (com ? "true" : "false") << std::endl;
    
}