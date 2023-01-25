#include <iostream>
#include <variant>
#include <string>

std::variant<int, float, uint32_t> convert(int a, int b, int c){
    std::variant<int, float, uint32_t> i, f, u;
    f = a * b / c;
    return f;
}


template<class T, class B>
T conver(B a){
    try{
        return (T)a;
    }catch(std::exception &e){
       std::cout << e.what() << std::endl; 
    }
}


union S{
    uint8_t a;
    float b;
}value;

typedef std::variant<uint8_t, uint16_t, int, float, std::string> cantypes;

void function2(cantypes &val, std::string typeval){
    if(typeval == "helo"){
        std::get<int>(val) = 
    }
}

void function(S &toevaluate, std::string typeval){
    if(typeval == "hello"){
        toevaluate.a = 10;
    }else{
        toevaluate.b = 10.3;
    }
}
int main(){
    std::variant<int, float, uint32_t> ret, f, u= convert(10, 100, 2);

    //std::cout << std::get<int>(ret) << " " << f << std::endl;


}