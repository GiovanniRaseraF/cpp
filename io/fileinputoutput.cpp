/*
Input Output sui file

*/

#include <fstream>
#include <iostream>

int main(){
    // Apertura di un file in input come text mode
    std::fstream inputfile{"./file.csv", std::ios::in};
    inputfile.close();

    // oppure
    std::ifstream in_file;
    std::string filename;
    std::cin >> filename;

    in_file.open(filename);
    if (in_file.is_open()){
        // Posso leggerlo
        int num{};
        double val2{};
        std::string name{};

        in_file >> num >> val2 >> name;
        
        std::cout << "num: " << num << ", val2: " << val2 << ", name: " << name << std::endl;
        
        std::string line{};
        std::getline(in_file, line);
    }else{
        // Non lo ho aperto e posso dirlo in output
    }

    in_file.close();

}