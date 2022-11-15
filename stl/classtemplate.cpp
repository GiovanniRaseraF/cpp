/*
Simile ad una funzione generica
*/
#include <iostream>
#include <utility>

template <typename T>
class item{
    public:
    T value;
    item(T va) : value{va}{}
    item(std::string name, T v) : value{v}{}
};

int main(){
    item<int> ciao{10};

    std::cout << ciao.value << std::endl;    

    std::pair<int, double> doppio;

    item<std::string> hello{"Ciao", "zio"};
    

    std::pair<int, std::string> p1{100, "Cioa"};
    std::cout << p1.first << " " << p1.second << std::endl;
}