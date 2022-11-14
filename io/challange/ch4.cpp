#include <iomanip>
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

    int countline = 0;
    while(!input.eof()){
        std::string line{};

        std::getline(input, line);
        
        if(line.length() > 1){
            output << std::setw(10) << std::left << countline << line << std::endl;
            countline++;
        }else{
            output << std::setw(10) << "" << line << std::endl;
        }
    }

    input.close();
    output.close();
}