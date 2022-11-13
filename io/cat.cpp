#include <iostream>
#include <fstream>
#include <string>

int main(int ac, char** av){
    if (ac > 2){
        std::cerr << "usage: ./cat.out input" << std::endl;
        exit(1);
    }

    std::string infilename{av[1]};
    std::ifstream input{infilename};

    if(!input){
        std::cerr << "input file not found: " << infilename << std::endl;
        exit(1);
    } 

    while(!input.eof()){
        std::string line{};

        std::getline(input, line);

        std::cout << line << std::endl;
    }

    input.close();
}