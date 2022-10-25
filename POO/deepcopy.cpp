/*Utilizzo di deep copy 
Ogni copia avrà un puntatore a storage unico nella heap
Utilizzare deep copy nel momento si ha presenza di raw pointer in una classe
*/

#include <iostream>
#include <string>

class deep{
    private:
    int *data;
    public:
    deep(int d);
    deep(const deep &to_copy);
    ~deep();
};

deep::deep(int d){
    std::cout << "Costruttore normale" << std::endl;
    data = new int;
    *data = d;
}

deep::deep(const deep &to_copy){
    data = new int; // Alloca lo storage
    *data = *to_copy.data;

    std::cout << "Costruttore di copia - deep" << std::endl;
}

deep::~deep(){
    delete data;
    std::cout << "Distruttore dei dati " << std::endl;
}

void display_deep(deep d){
    std::cout << "Display deep" << std::endl;
}

int main(){
    deep d1{10};
    display_deep(d1);
    deep d2{d1};
    return 0;
}