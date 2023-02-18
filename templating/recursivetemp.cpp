#include <iostream>
#include <unistd.h>
#include <iomanip>

template<uint8_t s, uint8_t e, bool active, unsigned long long int acc, uint8_t counter, bool start>
struct maskbits{};

template<uint8_t s, uint8_t e, bool active, unsigned long long int acc, uint8_t c>
struct maskbits<s, e, active, acc, c, false> 
    : public maskbits<  
        s, 
        e, 
        (c >= s && c < e), 
        ((0) << c) | acc, 
        c+1, 
        false
    >{};

template<uint8_t s, uint8_t e, bool active, unsigned long int acc>
struct maskbits<s, e, active, acc, 64, false>{
    static const unsigned long long int value = acc;
};

template<uint8_t s, uint8_t e> 
struct mask{
    static const unsigned long long int value = maskbits<s, e, 0, 0, 0, false>::value;
};

int main(){
    unsigned long long int v = mask<0, 10>::value;
    std::cout << "hex: " << std::hex << v << ", dec: " << std::dec << v << std::endl;
}