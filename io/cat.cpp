#include <iostream>
#include <fstream>
#include <string>

int main(int ac, char** av){
    if (ac > 3){
        std::cerr << "usage: ./cat.out input output" << std::endl;
        exit(1);
    }

    std::string infilename{av[1]};
    std::string outfilename{av[2]};
    std::ifstream input{infilename};
    std::ofstream output{outfilename};

    if(!input){
        std::cerr << "input file not found: " << infilename << std::endl;
        exit(1);
    } 

    if(!output){
        std::cerr << "output file not found: " << outfilename << std::endl;
        exit(1);
    }

    while(!input.eof()){
        std::string line{};

        std::getline(input, line);

        output << line << std::endl;
    }

    input.close();
    output.close();
}