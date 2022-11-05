/*
Una funzione può anche lanciare più di un'eccezione

Ad esempio nella funzione di calcolo del valore medio di 
kilometri fatti con un litro:

double calculate_kpl(int km, int liters){
    //
}

voglio poter lanciare un'eccezione se gallos == 0
e se miles o gallons sono negativi


*/
#include <string>
#include <iostream>
double calculate_kpl(int km, int liters){
    if(liters == 0)
        throw liters;
    
    if(km < 0 || liters < 0)
        throw std::string{"Valori negativi di km o litri"};

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
    }catch(int &ex){
        std::cerr << "Divisione per zero" << std::endl;
    }catch(std::string &ex){
        std::cerr << ex << std::endl;
    }catch(...){
        std::cout << "Generic exception" << std::endl;
    }
}