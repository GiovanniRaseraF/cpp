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
};

int main(){
    item<int> ciao{10};

    std::cout << ciao.value << std::endl;    

    std::pair<int, double> doppio;

    
}