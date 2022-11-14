#include <iomanip>
#include <iostream>
#include <string>
#include <fstream>

int main(){
    // L'apertura di questo file è sequenziale
    std::ofstream outputfile{"./ouputfile.txt",
        std::ios::app};

    if(!outputfile){
        std::cerr << "Non posso aprire il file" << std::endl;
        std::exit(1);
    }

    outputfile << "Test";
    int num{100};
    double total{255.67};
    std::string name{"Giovanni"};

    outputfile << num << std::endl;
    outputfile << total << std::endl;
    outputfile << name << std::endl;

    std::cout << "Inserisci il tuo nome: "; std::cin >> name;
    outputfile << name;



    outputfile.close();
}