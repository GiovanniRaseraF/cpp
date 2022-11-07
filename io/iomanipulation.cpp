/*
Metodi per la formattazione dell'output


*/

#include <iostream>
#include <iomanip>


int main(){
    // Boolean formatters
    // Voglio che venga scritto true o false con i booleani

    bool present = false;

    std::cout << "NO formattazione, present: " << present << std::endl;

    // setto la visualizzazined i true e false
    std::cout << std::boolalpha;
    std::cout << "present: " << present << std::endl;

    // anche questo fa la stessa cosa
    std::cout.setf(std::ios::boolalpha);
    std::cout << "present: " << !present << std::endl;
    
    // qui tolto il settaggio
    std::cout << std::noboolalpha;
    std::cout << "present: " << !present << std::endl;

    // se voglio settare nel modo standard di c++ di stampare i booleani
    std::cout << std::resetiosflags(std::ios::boolalpha);
    std::cout << "present: " << !present << std::endl;


    // Integer formatting
    int integervalue = 34235;
    // Attenzione che non so cosa sia il prefisso del valore
    std::cout << std::dec << integervalue << std::endl;
    std::cout << std::hex << integervalue << std::endl;
    std::cout << std::oct << integervalue << std::endl;
    std::cout << integervalue << std::endl;

    // Per sapere il prefisso del valore faccio così
    std::cout << std::showbase;
    std::cout << std::dec << integervalue << std::endl;
    std::cout << std::hex << integervalue << std::endl;
    std::cout << std::oct << integervalue << std::endl;
    std::cout << integervalue << std::endl;

    std::cout << std::noshowbase;
    std::cout << std::showpos << std::uppercase;
    std::cout << std::dec << integervalue << std::endl;
    std::cout << std::hex << integervalue << std::endl;
    std::cout << std::oct << integervalue << std::endl;
    std::cout << integervalue << std::endl;
    
    // Floating point di solito 16 valori dopo la virgola
    double num{1234.56789432423};
    std::cout << num << std::endl;

    std::cout << std::setprecision(9);
    std::cout << num << std::endl; // no trailing zeros
    std::cout << std::fixed;
    std::cout << num << std::endl; 
    std::cout << std::setprecision(3);
    std::cout << std::scientific;
    std::cout << num << std::endl;
    std::cout << std::setprecision(4) << std::fixed << std::scientific;
    std::cout << num << std::endl;

    // Reset dei parametri di floating point
    std::cout << std::resetiosflags(std::ios::floatfield);
    std::cout.unsetf(std::ios::scientific | std::ios::fixed);
    std::cout << std::setprecision(6);
    std::cout << std::resetiosflags(std::ios::showpos);
    std::cout << std::resetiosflags(std::ios::showpoint);

    
}