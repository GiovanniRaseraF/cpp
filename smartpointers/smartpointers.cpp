/*
Cosa sono gli smart pointers

- Sono oggetti come tutti gli altri
- Possono puntare solamente alla heap
- Chiamano automaticamente delete quando non servono
- Rispettano il principi di RAII

- Smart Pointers
    - unique_ptr
    - shared_ptr
    - weak_ptr
    - auto_ptr  // Deprecato
*/

#include <memory>
#include <string>
#include <iostream>

int main(){
    std::unique_ptr<std::string> s = std::make_unique<std::string>("Hello");

    std::cout << *s << std::endl;
}