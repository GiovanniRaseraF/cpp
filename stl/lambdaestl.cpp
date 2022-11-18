#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <functional>

int main(){
    std::vector<int> vet {12, 3, 4, 55, 66, 7, 88};

    vet.erase(std::remove_if(vet.begin(), vet.end(), 
        [](int v){return v % 2 == 0;})
    );
    
    for (int i : vet){
        std::cout << i << " ";
    }

    std::cout << std::endl;


    // Una seconda funzione molto potente è la funzione di std::all_of
    std::vector<int> vet2 {1, 3, 5, 6, 2, 10, 12};
    bool ret{false};

    // Capire se tutti i valori sono tra 0 e 12 compresi
    ret = std::all_of(vet2.begin(), vet2.end(), [](int v){
        return 0 <= v && v <= 12;
    });

    std::cout << std::boolalpha << "in range 0 12?: " << ret << std::endl;

    ret = std::all_of(vet2.begin(), vet2.end(), [](int v){
        return 3 <= v && v <= 12;
    });

    std::cout << std::boolalpha << "in range 3 12?: " << ret << std::endl;


}