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

class shallow {
    private:
    int *data;

    public:
    shallow(int d);
    shallow(const shallow &to_copy);

    ~shallow();
};

shallow::shallow(int d) {
    std::cout << "Costruttore con passato d" << std::endl;

    data = new int;
    *data = d;
    // Assegno a data il valore di di
}

shallow::~shallow(){
    std::cout << "Distruttore di data e della classe" << std::endl;
    delete data;
}

// Viene copiato il puntatore non il valore puntato
// nel momento in cui dealloco un oggetto allora dealloco anche data in quello copiato
shallow::shallow(const shallow &to_copy) : data(to_copy.data){
    std::cout << "Costruttore per copia della classe" << std::endl;
}
void display_shallow(shallow s){
    std::cout << "Passato s per copia" << std::endl;
}


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

    shallow sh1{100};
    display_shallow(sh1);

    // viene deallocata la memoria siccome nel passaggio viene fatta una copia
    // se passo sh1 per copia

    //  A questo punto viene fatto di nuovo una deallocazione di sh1 e quindi di data
    //  che è stato eliminato all'uscita di display_shallow()
    return 0;
}