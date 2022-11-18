#include <functional>
#include <vector>
#include <iostream>

int main(){
    // Quando creo una lambda in realtà sto facendo un nuovo 
    // oggetto con operator() overriddato
    // esempio
    class lamiafunzione{
        private:
        int contesto;
        public:
        lamiafunzione(int c) : contesto{c}{}

        void operator()(int x) const {
            std::cout << x + contesto;
        }
    };
    lamiafunzione func_l{10};

    // è come scrivere
    int c = 10;
    auto l = [c](int x){std::cout << x + c;};

    func_l(200);
    std::cout << std::endl;
    l(200);
    std::cout << std::endl;

    // Posso catturare delle espressioni by-value
    int valore = 5;
    [valore](){std::cout << valore << std::endl;}(); // Mi fa vedere 5
    // se voglio modificare il valore devo fare così 
    // utilizzando la keyword mutable
    [valore]()mutable{valore+=10;}();
    // qui non torna lo stesso valore
    std::cout << valore << std::endl;


    // posso parametrizzare il passaggio dei parametri
    [=](){std::cout << c << std::endl;}();

}