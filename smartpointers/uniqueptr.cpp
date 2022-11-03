/*
E' uno smart pointer molto efficiente

Descrizione:
unique_ptr<T>
    - punta ad un oggetto di tipo T nella heap
    - è unico, quindi può essere presente solo un puntatore all'oggeto nella heap
    - è proprietario di quello a cui punta
    - non può essere assegnato o copiato(NO copy constructor semantics)
    - può essere mosso (move constructor semantics)
    - quando viene fatto il delete, quello a cui punta viene subito distrutto
*/
#include <memory>
#include <iostream>
#include <string>
#include <vector>
int main(){
    // Esempio
    std::unique_ptr<int> p1 = std::make_unique<int>(100);

    std::cout << *p1 << std::endl;

    // Ho accesso ad alcune funzioni dei smartpointer
    std::cout << "p1.get()->" << p1.get() << std::endl;

    // assegno null a p1
    p1.reset();

    if(p1) // da zero siccome ora è nullptr
        std::cout << *p1 << std::endl;
    else 
        std::cout << p1.get() << std::endl; // infatti questo mi da 0

    
    // Attenzione all copia siccome non si può fare
    // Esiste solamente la MOVE
    // Infatti devo fare
    std::cout << "\n\n\nVector e unique_ptr\n";
    std::vector<std::unique_ptr<int>> vec;

    std::unique_ptr<int> p2 = std::make_unique<int>(200);

    // Non posso fare vec.push_back(p2); 
    // perchè farei una copia di p2, devo fare:
    vec.push_back(std::move(p2));

    for(const auto &v : vec)
        std::cout << *v << std::endl; 

    // Moving
    std::cout << "\n\n\nMoving\n";
    std::unique_ptr<std::string> s1 = std::make_unique<std::string>("Ciao");
    std::unique_ptr<std::string> s2;

    s2 = std::move(s1); // Posso fare solo questo
    // adesso s1 punta a null

    std::cout << *s2 << std::endl;

    if(s1 == nullptr){
        std::cout << "s1 punta a nullptr" << std::endl;
    }
}