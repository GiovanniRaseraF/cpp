#include <iostream>
#include <unistd.h>
#include <iomanip>
#include <bitset>
// 64 bit 
template<uint8_t s, uint8_t e, bool active, unsigned long  acc, uint8_t counter, bool start>
struct maskbits{};

template<uint8_t s, uint8_t e, bool active, unsigned long acc, uint8_t c>
struct maskbits<s, e, active, acc, c, false> 
    : public maskbits<  
        s, 
        e, 
        (c >= s && c < e), 
        (((unsigned long)(c >= s && c < e)) << c) | acc, 
        c+1, 
        false
    >{};

template<uint8_t s, uint8_t e, bool active, unsigned long acc>
struct maskbits<s, e, active, acc, 64, false>{
    static const unsigned long value = acc;
};

template<uint8_t s, uint8_t e> 
struct mask{
    static const unsigned long value = maskbits<64-e, 64-s, 0, 0, 0, false>::value;
};

int main(){

    unsigned long v = 0;
    v = mask<0, 16>::value;
    std::cout << std::bitset<64>(v) << std::endl;
    
    v = mask<0, 17>::value;
    std::cout << std::bitset<64>(v) << std::endl;

    v = mask<0, 18>::value;
    std::cout << std::bitset<64>(v) << std::endl;

    v = mask<0, 19>::value;
    std::cout << std::bitset<64>(v) << std::endl;

    v = mask<0, 20>::value;
    std::cout << std::bitset<64>(v) << std::endl;

    v = mask<10, 20>::value;
    std::cout << std::bitset<64>(v) << std::endl;
    
    v = mask<0, 64>::value;
    std::cout << std::bitset<64>(v) << std::endl;
}

#if 0
// 8 bit 
template<uint8_t s, uint8_t e, bool active, unsigned short int acc, uint8_t counter, bool start>
struct minimaskbits{};

template<uint8_t s, uint8_t e, bool active, unsigned short int acc, uint8_t c>
struct minimaskbits<s, e, active, acc, c, false> 
    : public minimaskbits<  
        s, 
        e, 
        (c >= s && c < e), 
        ((0) << c) | acc, 
        c+1, 
        false
    >{};

template<uint8_t s, uint8_t e, bool active, unsigned short int acc>
struct minimaskbits<s, e, active, acc, 64, false>{
    static const unsigned short int value = acc;
};

template<uint8_t s, uint8_t e> 
struct minimask{
    static const unsigned short int value = minimaskbits<s, e, 0, 0, 0, false>::value;
};
#endif

