#include <iostream>
#include <string>
#include <vector>

void func(std::vector<std::string> vec){
    std::cout << "Il vettore ha " << vec.size() << " elementi" << std::endl;
}

int main(){
    std::vector<std::string> vec(100000000);

    std::cout << "Adesso passo il vettore per copia" << std::endl;
    func(vec);
    std::cout << "Ho passato il vettore e ho " << vec.size() << " elementi" << std::endl;


    // Questo risulta molto più veloce
    std::cout << "Adesso passo il vettore per move" << std::endl;
    func(std::move(vec));
    std::cout << "Ho passato il vettore e ho " << vec.size() << " elementi" << std::endl;



}