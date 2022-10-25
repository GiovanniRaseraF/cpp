/*
Move constructor e move semantics

Avvolte quando eseguiamo codice il compilatore crea delle variabili temporanee 
senza nome

int total {0};
total = 100 + 200;

- 100 + 200 viene valutato come 300 e salvato in una variabile temporanea
- poi 300 viene salvato della variabile total
- poi la variabile senza nome viene distrutta

Questo succede anche se utilizzo gli oggetti

E' importante vedere quali sono gli Rvalue e i Lvalue per capire la movesemantics


///
gli Rvalue sono i valori che la move semantics cerca di ottimizzare

- nei programmi viene chiamato molto spesso il copy constructor per motivo della 
copy semantics di c++

- i copy constructor con deep copy hanno molto everhead 

- c++11 introduce la move semantics e il move constructor
- muove l'oggetto al posto di copiarlo 

- Ottimale ma raccomandato nel momento in cui si usano raw pointers

- copy elision - c++ è capace di ottimizzare anche la copia completamente, (RVO - Return 
value optimization)


// Concetto importante:
Rvalue reference , referencing an Rvalue

- utilizzato nella move semantics e perfect forwarding
- la semantica di move è tutta basata sul riferimento a Rvalue
- Utilizzata del costruttore di move in modo da assegnare il modo efficente un oggetto 
    ad un altro invece di copiarlo
- L'operatore è il riferimento (&&)

*/
#include <iostream>
#include <string>
#include <vector>

void func(int &num){
    std::cout << num << std::endl;
}
void func(int &&num){
    std::cout << num << std::endl;
}

class move{
    private:
    std::string name;
    int *data;
    public:
    int val = 0;
    void set_data_value(int d){*data = d;}

    int get_data_value() {return *data;}

    move(int d, std::string n) : name{n}{
        data = new int; *data = d;
        std::cout << "Creazione: " << name << std::endl;
    }
    move(const move &to_copy) : name{to_copy.name}, val{to_copy.val}{
        std::cout << "Copia:" << name << std::endl;
        data = new int;
        *data = *to_copy.data;
    }
#define MOVEC
#ifdef MOVEC
    move(move &&to_move)noexcept;
#endif
    ~move();
};


#ifdef MOVEC
// non devo mettere const
move::move(move &&to_move) noexcept
: data{to_move.data}, name{std::move(to_move.name)}, val{std::move(to_move.val)}{
    std::cout << "Move:" << name << std::endl;
    to_move.data = nullptr;
}
#endif

move::~move(){
    if(data == nullptr)
        std::cout << "Free nullprt data" << std::endl;
    else
        std::cout << "Free of: " << *data << ":" << name << std::endl;
    delete data;
}

int main(){
   
    std::vector<move> vec_move;
    vec_move.push_back(move{100, "Federico"});
    vec_move.push_back(move{100, "ico"});
    vec_move.push_back(move{100, "o"});
    vec_move.push_back(move{100, "Feico"});
    vec_move.push_back(move{100, "cccccco"});
    vec_move.push_back(move{100, "Lui"});
    vec_move.push_back(move{100, "ano"});
    vec_move.push_back(move{100, "FR"});
    //vec_move.push_back(move{10, "Giovanni"});

    /*std::cout << std::endl << std::endl;
    int x {100};

    int &l_ref = x; // riferimento a l-value quindi a x
    l_ref = 10;

    int &&r_ref = 200;  // riferimento a r-value
    std::cout << r_ref << std::endl;

    r_ref = 300;    // cambio r_ref in 300

    std::cout << r_ref << std::endl;
    // int &&x_ref = x; errore di copilazione
    func(x);
    
    func(32432); // passato per riferimento a Rvalue*/
}
