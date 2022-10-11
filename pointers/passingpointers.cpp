#include <vector>
#include <string>
#include <iostream>

// Moltiplica per 2 quello che viene passato
void double_data(int *int_ptr);
void double_data(int *int_ptr){
    *int_ptr = *int_ptr * 2;
}

void swap(int *, int *);
void swap(int *a, int *b){
    int temp = *a;
    *a = *b;
    *b = temp;
}

void constDisplay(std::vector<int> const*const v){
    std::cout << "const*const: ";
    for(auto i : *v){
        std::cout << " " << i;
    }
    std::cout << ";" << std::endl;
}

template<class T>
void genericDisplay(const std::vector<T> &v, const char *const head){
    std::cout << head << "generic:";
    for(auto i : v){
        std::cout << " " << i;
    }
    std::cout << ";" << std::endl;
}

void display(const std::vector<int> &v, const char *const head){
    std::cout << head << ":";
    for(int i : v){
        std::cout << " " << i;
    }
    std::cout << ";" << std::endl;
}

int main(){ 
    // Passare per riferimento con puntatori come parametri

    // E possibile utilizzare la deferenziazione dei puntatori per 
    // realizzare passaggio per riferimento

    // Il parametro può essere un puntatore oppure il riferimento 
    // ad una variabile
    int value {10};

    std::cout << value << std::endl;
    double_data((&value));

    std::cout << value << std::endl;

    std::cout << std::endl << "-------------" << std::endl;

    int val1[]{34, 235, 35, 23, 55};
    std::cout << "Vet: ";
    for (int &i : val1)
        std::cout << i << " ";
    std::cout << std::endl;

    swap(val1+2, val1+3);

    std::cout << "Vet aft. swap: ";
    for (int &i : val1)
        std::cout << i << " ";
    std::cout << std::endl;

    // Vector display
    std::vector<int> v(33, 10);
    std::vector<int> v2{200, 3, 234, 34, 2};
    constDisplay(&v);
    genericDisplay(v2, "generic");

    return 0;
}