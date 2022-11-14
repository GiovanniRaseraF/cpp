#include <string>
#include <iostream>
#include <iomanip>
#include <fstream>

int main(){
    std::string filename{"romeoandjuliet.txt"};
    std::ifstream inputfile{filename};

    if(!inputfile){
        std::cerr << "File non trovato" << std::endl;
        std::exit(1);
    }

    std::string wordtosearch{};
    std::string currentword{};
    int count = 0;
    std::cout << "Parola da cercare: "; std::cin >> wordtosearch;

    while(!(inputfile >> currentword).eof()){
        if(currentword.find(wordtosearch) != std::string::npos){
            count++;
        }
    }
    
    std::cout << "La parola " << wordtosearch << " é presente " << count << " volte" << std::endl;

    inputfile.close();
}