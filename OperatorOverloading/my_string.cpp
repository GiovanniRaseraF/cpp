#include "my_string.hpp"

#include <iostream>
#include <string>

#ifdef MY_STRINGUNITTEST
int main(){
    my_string s1{"Hello"};
    my_string s2{s1};

    std::cout << s1.c_str() << "   " << s2.c_str() << std::endl;
    return 0;
}
#endif