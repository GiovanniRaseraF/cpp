/*
Quando utilizzo le eccezioni devo stare attento e usare delle best practice

- throw di oggetti e non tipi primitivi
    - throw std::string("Helo");
    - NON throw true;

- throw di oggetti per valore
    - throw std::string("Helo");

- catch by reference
    - catch(std::string &error){}


*/
#include <iostream>
class DivideByZeroException{

};

class NegatiValueException{

};
double calculate_kpl(int km, int liters){
    if(liters == 0)
        throw DivideByZeroException();

    if(km < 0 || liters < 0)
        throw NegatiValueException();

    return static_cast<double>(km) / liters;
}

int main(){

    double kpl{0};
    int km{0}, liters{0};

    std::cout << "km: "; std::cin >> km;
    std::cout << "liters: "; std::cin >> liters;

    try{
        kpl = calculate_kpl(km, liters);
        std::cout << "kpl: " << kpl << std::endl;
    }catch(const DivideByZeroException &ex){
        std::cerr << "Divisione per zero" << std::endl;
    }catch(const NegatiValueException &ex){
        std::cerr << "Negative Value" << std::endl;
    }catch(...){
        std::cout << "Generic exception" << std::endl;
    }
}