#include <iostream>
#include <vector>
#include <map>
#include <string>
#include <iomanip>
#include <variant>
#include <stdint.h>
#include <functional>

using var_t = std::variant<
    uint8_t, 
    uint16_t, 
    uint32_t, 
    int8_t, 
    int16_t, 
    int32_t, 
    float, 
    std::string
>;

class elem {
    var_t value;
    std::function<var_t(const uint8_t *frame, int startbyte, int endbyte)> func;
    std::string elemname;
    
};