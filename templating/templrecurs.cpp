#include <iostream>
#include <string>

template<uint64_t s, uint64_t e, uint64_t c>
uint64_t mask(){
    if constexpr(c >= s && c < e)
        return (0x8000000000000000 >> c) | mask<s, e, c+1>();
    else if constexpr(c == 64)
        return 0;
    else
        return 0 | mask<s, e, c+1>();
}

int main(){
   uint64_t m = mask<62, 64, 0>();
   std::cout << m << std::endl;
}