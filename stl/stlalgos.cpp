#include <algorithm>
#include <iostream>
#include <vector>

// Creazione di una functor, cioè una struttura a cui faccio 
// l'override dell'operatore (), cioè l'operatore di esecuzione
struct square_functor{
    void operator()(int x){
        std::cout << x * x << " ";
    }
};

void sq(int x){
    std::cout << x*x << " ";
}
int main(){
    // find
    while(true){
        int tosearch{0};

        std::vector<int> vec {1, 2, 5, 7};
        std::cout << "Cosa vuoi cercare: "; std::cin >> tosearch;
        // Per utilizzare find devo dire come usare operator==
        auto location = std::find(vec.begin(), vec.end(), tosearch);
        
        if(location != vec.end()){
            std::cout << *location << std::endl;
        }else{
            std::cout << "Elemento non trovato" << std::endl;
        }

        // Posso usare i functor
        square_functor square;
        std::for_each(vec.begin(), vec.end(), square);
        std::cout << std::endl;

        // Oppure i puntatori a funzione
        std::for_each(vec.rbegin(), vec.rend(), sq);
        std::cout << std::endl;

    }
}