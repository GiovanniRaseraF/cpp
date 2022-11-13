#include <iostream>
#include <string>
#include <fstream>

int main(){
    std::ifstream in_file;

    in_file.open("./file.csv");

    if(!in_file){
        std::cerr << "Non posso aprire il file" << std::endl;
        std::exit(1);
    }

    std::cout << "Comincio a leggere il file" << std::endl;

    std::string str;
    in_file >> str;

    std::cout << str;

    in_file.close();
}