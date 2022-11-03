/*
Shared pointers

- Permette di utilizzare puntatori condivisi all heap

le caratteristiche di un shared_ptr<T> sono:
    - Punta ad un oggetto di tipo T nella heap
    - non è unico, possono essere tanti shared_ptr che puntano allo stesso elemento 
    nella heap
    - crea una condivisione del puntatore e la gestisce 
    - Posso utilizzare COPY semantics
    - Posso utilizzare MOVE semantics
    - Non supporta gli array di default
    - Quando il contatore dei puntatore che puntano all'oggetto è zero, l'oggetto nella
    heap viene distrutto


*/
#include <memory>
#include <iostream>
#include <vector>
#include <string>

int main(){
    // Esempi
    std::shared_ptr<int> p1 = std::make_shared<int>(2000);

    std::cout << *p1 << std::endl;
    // Posso sapere quanti puntatori puntano all'oggetto
    std::cout << "Puntatori a p1 attivi: " << p1.use_count() << std::endl;

    auto p2{p1};

    std::cout << "Puntatori a p1 dopo la creazione di p2{p1}: " << p1.use_count() << std::endl;

    // Se ora chiamo reset su p1 il puntatore che avevo con p2 rimane
    p1.reset();
    std::cout << "p1 adesso punta a nullptr " << p1 << std::endl;

    std::cout << "p2 punta all'area di memoria e quindi ora è presente un puntatore" << std::endl;
    std::cout << "infatti se faccio p2.use_count(): " << p2.use_count() << std::endl;


    // Vettori
    std::cout << "\n\n\n";
    std::vector<std::shared_ptr<int>> vec;

    std::shared_ptr<int> p3 = std::make_shared<int>(2300);
    std::cout << "Prima mettere l'elemento nel vettore" << std::endl;
    std::cout << "p3.use_count(): " << p3.use_count() << std::endl;

    vec.push_back(p3);

    std::cout << "Varicato nel vettore per copia" << std::endl;
    std::cout << "quindi p3.use_count(): " << p3.use_count() << std::endl;
}