#include <iostream>
#include <random>
#include <fstream>

int main(int argc, char *argv[]){
    std::string filename{argv[1]};
    std::ifstream filein{filename};
    std::vector<std::string> lines;
    
    // load file
    for(;!filein.eof();){
        std::string s; 
        std::getline(filein, s);
        lines.push_back(s);
        std::cout << s << std::endl;
    }

    // random gen
    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_int_distribution<int> dist(0, lines.size());

    while(true){
        std::cout << "Domanda: " << lines[dist(mt)] << std::endl;

        std::string temp;
        std::getline(std::cin, temp);
    }

    return 0; 
}