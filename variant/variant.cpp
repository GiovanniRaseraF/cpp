#include <iostream>
#include <variant>
#include <string>
#include <vector>
#include <iomanip>

using var_t = std::variant<int, long, double, std::string>;
template<class... Ts> struct overloaded : Ts... { using Ts::operator()...; };
template<class... Ts> overloaded(Ts...) -> overloaded<Ts...>;

int main(){
    std::vector<var_t> vec = {2, 15l, 1.5, 2};
    
    for(auto &v : vec){
        std::visit(overloaded {
            [](auto arg) { std::cout << arg << ' '; },
            [](double arg) { std::cout << std::fixed << arg << ' '; },
            [](const std::string& arg) { std::cout << std::quoted(arg) << ' '; }
        }, v);
    }

    var_t valueread;
    for(int i = 0; i < 10; i++){
        if (i % 2 == 0){
            //std::get<long>(valueread);
            valueread = 12;
        }else{
            //std::get<std::string>(valueread) = "ciao come stai";
            valueread = "helo come stai";
        }

        long value;
        std::string value_s;

        // print value;
        std::visit(overloaded{
            [&] (long arg){ value = arg; std::cout << value << std::endl;},
            [&] (std::string arg) {value_s = arg; std::cout << value_s << std::endl;}
        }, valueread);

    }
}