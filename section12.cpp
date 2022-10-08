// Pointers 
// What a pointer is

/*
Sono delle variabili che contengono
la locazione di variabili o di funzioni

Perchè sono utilizzati

- Per accedere alla memoria
- Di solito per accedere alle periferiche di microcontrollori
*/

#include <string>

int main(){
    int *int_ptr;

    // Importante inizializzare il puntatore altrimete
    // contiene dati inutili
    // nullptr punta a null
    std::string *string_ptr{nullptr};

    int score{10};
    double high_temp{100.7};

    score_ptr = &score; // OK

    score_ptr = &high_temp; // Errore di computazione

    
    return 0;
}