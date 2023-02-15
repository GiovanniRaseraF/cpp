#include <iostream>
#include <string>

template<std::size_t sb, std::size_t eb, int of, int f> struct converter{
    uint32_t doconvert(uint64_t raw){
        constexpr int sbit = sb * 8, ebit = eb * 8, shiftright = 64 - ebit;
        std::cout << sbit << " " << ebit << " " << shiftright << " " << raw << std::endl;

        return 0;
    }
};


int main(){
    converter<1, 1, 1, 1> c;
    c.doconvert(12);
    
    converter<4, 6, 1, 1> f;
    f.doconvert(23);
}
