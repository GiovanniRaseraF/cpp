#include <iostream>
#include <iomanip>
#include <unistd.h>

int main(){
    uint8_t v1 = 23;
    uint8_t v2 = 245;

    uint16_t ret = 0;
    ret |= ((uint16_t)v1 << 8) | v2;

    std::cout << ret << std::endl;
    std::cout  << std::hex << ret << std::endl;
    std::cout << (int)v1 << (int)v2 << std::endl;
}