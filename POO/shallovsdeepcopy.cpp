/*
Shallow VS Deep copy constructor

Consideriamo di avere un classe che contiene un attributo che è un puntatore

- Il suo costruttore alloca la memoria e inizializza il puntatore
- Il distruttore chiama delete e lo dealloca

- Se non scrivo il copy constructor succede che:
    - Vengono copiati i puntatori ma il valori all'interno dell'oggeto puntato 
    non vengono copiati
*/
#include <iostream>
#include <string>


class player_withpointer{
    public:
    std::string *name;
    int age;
    int *vector;

    player_withpointer(std::string *n, int a, int len) : name{n}, age{a}{
        vector = new int[len];
    }

    ~player_withpointer(){
        std::cout << "Distruttore";
        delete [] vector;
    }
};

int main(){
    std::string *name = new std::string("Federico");
    player_withpointer p1(name, 10, 11);
    // In questo caso viene fatta una shallow copy perche 
    //  sia p2.name che p1.name puntano a 0x555
    //  quindi se per qualche modivo dealloco la memoria
    //  non so più cosa potrebbe esserci scritto dentro 
    player_withpointer p2 = p1;


    delete name;

    // Quando arrivo a qusto punto viene ritornato questa stringa
    // free(): double free detected in tcache 2
    return 0;
}