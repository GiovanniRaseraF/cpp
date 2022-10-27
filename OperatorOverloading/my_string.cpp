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

    s5 = "Hello";
    std::cout << "S5:" << s5 << std::endl;
    
    return 0;
}
#endif