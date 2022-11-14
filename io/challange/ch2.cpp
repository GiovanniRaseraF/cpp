#include <iostream>
#include <string>
#include <iomanip>
#include <fstream>
#include <map>
#include <cstring>
#include <algorithm>
#include <functional>
#include <numeric>

int countcorrect(std::string &corretta, std::string &data){
    size_t lencor = std::min(corretta.length(), data.length());
    int punti{0};

    for(size_t i = 0; i < lencor; i++)
        if(std::tolower(corretta[i]) == std::tolower(data[i]))
            punti++;

    return punti;
}

void stampa(std::map<std::string, int> &risposte, double avg){
    // Stampa
    std::cout << std::setw(15) << std::left << "Student" << std::setw(10) << std::right << "Score" << std::endl;
    std::cout << std::setw(25) << std::setfill('-') << "" << std::endl << std::setfill(' ');
    for(auto &i : risposte){
        std::cout << std::setw(15) << std::left << i.first << std::setw(10) << std::right << i.second << std::endl;
    }
    std::cout << std::setw(25) << std::setfill('-') << "" << std::endl << std::setfill(' ');
    std::cout << std::setw(15) << std::left << "Average" << std::setw(10) << std::right << avg << std::endl;
}

int main(){
    std::map<std::string, int> risposte{};
    double sumpoints{0};
    double avg{0};
    std::string rispostaesatta{};
    std::ifstream input{"./inputch2.txt"};

    if(!input){
        std::cerr << "Non posso aprire il file" << std::endl;
        std::exit(1);
    }

    // Carica la prima riga
    input >> rispostaesatta;

    std::string nome{}, risposta{};
    while(!(input >> nome >> risposta).eof()){
        risposte[nome] = countcorrect(rispostaesatta, risposta);
        sumpoints += risposte[nome];
    }
    avg = sumpoints / risposte.size(); 

    stampa(risposte, avg);

    input.close();
}