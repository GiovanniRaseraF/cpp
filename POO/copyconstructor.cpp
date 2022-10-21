/*
Copy constructor

Quando gli oggetti vengono copiati c++ deve creare un nuovo oggetto da un oggetto esistente

- Quando viene fatta una copia? 
    - passaggio un oggetto per valore ad una funzione
    - ritornare un oggetto da una funzione per valore
    - costruire un oggetto basato su un secondo oggeto

- c++ deve avere un modo per farlo anche se non viene specificato un costruttore per copia,
    questo lavoro deve essere fatto dal compilatore in modo generico se non viene specificato 
    dal compilatore

- Se non viene dato un modo di fare il costruttore per copia, c++ ne crea uno di default

- Sostanzialmente copia ogni membro della classe 

- Attenzione: Se viene copiato un puntatore, viene copiato solo il puntatore non l'oggetto puntato 
    - questo potrebbe portare a problemi oppure potrebbe essere una feature
        - deep copy vs shallo copy

BEST PRACTICE:
- Creare il proprio costruttore di copia nel momento in cui si ha a che fare con attributi che sono RAWPOINTERS
- Creare il proprio costruttore di copia se viene passata una const reference
- Usare le classi di STL siccome loro hanno tutte un copy constructor
- Non utilizzare raw data pointers se possibile
*/

#include <string>
#include <iostream>

class player_copyconstruct{
    private:
    std::string name;
    int age;

    public:
    player_copyconstruct(std::string n = "None", int a = 0) :  name{n}, age{a}{
        std::cout << "Costuttore normale di:" << name << std::endl;
    }

    // Costruttore per copia
    player_copyconstruct(const player_copyconstruct &to_copy) :  player_copyconstruct{to_copy.name, to_copy.age}{
        // In questo modo viene anche eseguito il corpo del costruttore con tutti i parametri
        // player_copyconstruct{to_copy.name, to_copy.age}{ 
        
        // In qesto modo è più veloce ma duplico il codice 
        // name{to_copy.name}, age{to_copy.age} {
        std::cout << "Costruttore di copia" << std::endl;
    }

    ~player_copyconstruct(){
        std::cout << "Distruzione di: " << name << std:: endl;
    }

    friend std::ostream &operator<<(std::ostream &os, const player_copyconstruct &pc){
        os << "Player: " << pc.name << ", " << pc.age << std::endl;

        return os;
    }
};

void display_player(player_copyconstruct pl){
    std::cout << pl;
}

int main(){
    player_copyconstruct p1{"Giovanni", 10};
    player_copyconstruct p = p1;

    display_player(p);

    /*
    Questo è l'output del programma:
    Costruttore di copia
    Costruttore di copia
    Player: Giovanni, 10
    Distruzione di: Giovanni
    Distruzione di: Giovanni
    Distruzione di: Giovanni

    Alla fine vengono fatte 2 copie dell'oggetto
    una quando uso l'operatore di = 
    e la seconda quando passo l'oggeto come valore 
    alla funzione di display_player

    */

    return 0;
}