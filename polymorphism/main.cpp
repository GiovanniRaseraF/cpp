#include <iostream>
#include <string>
#include <vector>

/*
Polymorphism:
Cosa è? 
    è una parte fondamentale della programmazione in c++
    inheritance e l'overload delle funzioni è un modo di 
    creare polimorfismo però le funzioni vengono bindate a 
    compile time
    
    bisogna trovare un modo per bindare le funzioni a runtime

    per farlo bisogna usare le funzioni virtuali


Differenti tipologie di polimorfismo in c++:
    - Compile time (func overload, operator overload)
    - Run time (func Override) utilizzare virtual


*/
#include <memory>
// The problem
class base{
    public:
    void say() const {
        std::cout << "Hello base" << std::endl;
    }
};

class derived : public base{
    public:
    void say() const {
        std::cout << "Hello derived" << std::endl;
    }
};

void say(const base &b){
    b.say();
}

int main(){
    base b;
    b.say();

    
    // non va bene perche deve chiamare il say di derived
    derived d;
    d.say();
    // devo bindare la funzione a runtime altrimenti non funziona
    // nel modo corretto
    say(d);

    base *b_ptr = new derived();
    b_ptr->say();

    // Anche con unique pointer non funziona nel modo 
    // corretto 
    std::unique_ptr<base> p = std::make_unique<derived>();
    p->say();
    
}