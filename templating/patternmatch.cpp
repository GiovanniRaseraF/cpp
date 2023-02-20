#include <iostream>
#include <unistd.h>

template<uint64_t s, uint64_t e, uint64_t acc, uint64_t c> 
    struct maskbase<s, e, acc, c>{ 
            static const uint64_t value =  maskbase<s, e, (acc | ( 1 << c)), c+1>::value;
        };

template<uint64_t s, uint64_t e, uint64_t acc> 
    struct maskbase<s, e, acc, 64>{
        static const uint64_t value = acc;
    };

int  main(){
    uint64_t c = maskbase<2, 4, 0, 0>::value;
    std::cout << c;
}