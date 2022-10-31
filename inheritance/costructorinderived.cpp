/*
Quando ho delle classi derivate, 

Il costruttore della classe derivata da una base
chiama prima il costruttore della base e poi il proprio
questo perché la classe derivata potrebbe aver bisogno di 
elementi della classe base che devono essere inizializzati 
per essere utilizzati

*/
#include <iostream>
#include <string>
class base{
    private:
    int value;

    public:
    base(){
        std::cout << "Costruttore Base" << std::endl;
    }

    base(int x) : value{x} {
        std::cout << "Constructor (int) Base" << std::endl;
    }

    ~base(){
        std::cout << "Distruttore Base" << std::endl;
    }

    int get_value(){return value;}
};

class derived : public base{
    private:
    int value_x2;

    public:
    derived() : base{}, value_x2{0} {
        std::cout << "Constructor Derived" << std::endl;
    }

    derived(int x) : base{x}, value_x2{x * 2} {
        std::cout << "Constructor (int) Derived" << std::endl;
    }

    ~derived(){
        std::cout << "Distruttore Derived" << std::endl;
    }

    int get_(){
        return value_x2;
    }
};


class derived_ : public base{
    private:
    int value_x2;

    public:
    derived_() : value_x2{0} {
        std::cout << "Constructor Derived" << std::endl;
    }

    derived_(int x) : value_x2{x * 2} {
        std::cout << "Constructor (int) Derived" << std::endl;
    }

    ~derived_(){
        std::cout << "Distruttore Derived" << std::endl;
    }

    int get_(){
        return value_x2;
    }
};

int main(){
    derived *deriv_ptr = new derived();
    delete deriv_ptr;

    /*
    Costruttore Base
    Constructor Derived
    
    Distruttore Derived
    Distruttore Base
    */
    std::cout << std::endl << std::endl;
    derived_ *derived_ptr2 = new derived_(10);
    delete derived_ptr2;

    /*
    Costruttore Base
    Constructor (int) Derived
    Distruttore Derived
    Distruttore Base
    */

    std::cout << std::endl << std::endl;
    derived *derivedptr2 = new derived(10);
    delete derivedptr2;
    /*
    Constructor (int) Base
    Constructor (int) Derived
    Distruttore Derived
    Distruttore Base
    */ 
}
