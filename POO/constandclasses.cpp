/*
Usare le costanti nelle classi

- Passaggio di costanti come argomenti alle classi

- Possibile costruire oggetti const

- Cosa succede se chiamo una funzione di una classe in un oggetto const

- const-correctness
*/
#include <iostream>
#include <string>

class player_efficient{
    public:
    std::string name;
    int age;

    // Questo tipo di inizializzazione è più efficiente siccome
    // l'oggeto viene inizializzato e subito prende i valori passati
    player_efficient(std::string n, int a) : name{n}, age{a}{}
    player_efficient() : name{"None"}, age{0}{}

    friend std::ostream &operator<<(std::ostream &os, const player_efficient &peffi){
        os << "Ieffi: name:" << peffi.name << ", age:" << peffi.age;

        return os;
    }

    /// @brief importate che sia const altrimenti non posso usare un oggetto const
    /// @return il nome dell'oggetto
    std::string get_name() const {
        return name;
    }

};


int main(){
    const player_efficient villain {"Villain", 100};

    // devo dire che il metodo è const
    villain.get_name();
}