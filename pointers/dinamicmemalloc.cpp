#include <vector>
#include <string>
#include <iostream>

int main(){
    int *int_ptr{nullptr};

    int_ptr = new int; // allocazione nella heap

    std::cout << int_ptr << std::endl;
    std::cout << *int_ptr << std::endl; // Garbage

    *int_ptr = 100;

    std::cout << *int_ptr << std::endl;

    // quando si inizializzacon new è necessario anche deallore la memoria 
    // utilizzata altrimenti si incombe in leak di memoria
    delete int_ptr;

    int *array_ptr{nullptr};

    size_t size{};

    std::cout << "How big do you want the array?";
    std::cin >> size;

    
    array_ptr = new int[size];
    

    delete [] array_ptr; // Questo serve ad eliminare
                        // un array
    



    return 0;
}