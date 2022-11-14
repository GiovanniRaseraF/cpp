#include <iostream>
#include <sstream>
#include <iomanip>
#include <string>

int main(){
    std::stringstream s1{};

    s1 << "Hello" << 10 << std::endl;

    std::cout << s1.str();

    std::string bello{"Giovanni 10 200 104f"};
    std::stringstream streambello{bello};

    std::string name{}, num{}, num2{}, num3{};

    streambello >> name >> num >> num2 >> num3;
    std::cout << "Name: " << name << " num: " << num << std::endl;
}