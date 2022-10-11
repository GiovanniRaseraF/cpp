#include <iostream>
#include <string>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <utility>
#include <vector>
#include <functional>
#include <iterator>
#include <execution>

int *largest_int(int *int_ptr1, int *int_ptr2){
    if (*int_ptr1 > *int_ptr2)
        return int_ptr1;
    else
        return int_ptr2;
}

int *create_array(size_t len, int init_value = 0){
    // importante controllere che la new vada a buon fine
    int *vet_ret{nullptr};

    try
    {
        vet_ret = new int[len*100000000];
        
        for(int i = 0; i < len; i++)
            vet_ret[i] = init_value;
    }
    catch(const std::exception& e)
    {
        std::cerr << "int *create_array(size_t, int = 0): " << e.what() << '\n';
    }
    
    return vet_ret;
}

int main(){
    // Le funzioni possono ritornare dei puntatori
    /*
        - type *function();

    !!! ATTENZIONE !!!
    Quello che viene ritornato da una funzione deve essere:
        - Memoria allocata -dinamicamente- nella funzione
        - Oppure dati che sono stati passati alla funzione
    
    MAI MAI MAI Ritornare puntatori allocati nello stack dinamico della 
    funzione siccome questi dati vengono deallocati dopo che la funzione finisce
    quindi non sarà più possibile accedere ai dati siccome verrano poi sovrascritti


    !! IMPORTANTE !!
    In c++ si utilizzano gli smart_pointers per evitare tutte queste problematiche
    */
    int a {1000};
    int b {134243};
    int maxval {*(largest_int(&a, &b))};

    std::cout << "max: " << maxval << std::endl;

    std::vector<int> ss(1, 99999999);
    /*std::for_each(ss.begin(), ss.end(), [](int elem){
        std::cout << elem << " ";
    });*/
    
    std::cout << std::endl;
    auto result = std::reduce(std::execution::par, ss.begin(), ss.end(), 0);

    std::cout << "Reduce: " << result << std::endl;

    int *my_array{nullptr};
    my_array = create_array(100, 11);

    try
    {
       delete [] my_array;
    }
    catch(const std::exception& e){std::cerr << e.what() << '\n';}
    
    return 0;
}