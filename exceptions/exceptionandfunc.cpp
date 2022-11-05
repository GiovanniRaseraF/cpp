#include <exception>
#include <iostream>

/*
In questa funzione tutti i valori di output possono avere senso, questo perche 
anche 0 puà essere un giusto avg per i valori, oppure infinito

quindi devo trovare un modo per dire che c'è stato un problema nel passaggio dei valori

posso farlo nel modo C in questo modo
bool calculate_avg(int sum, int total, int &result){
    /// code
}

e ritornare false se qualcosa non è andato

Però questo complica l'utilizzo della funzione!!

///////
Se utilizzo le eccezioni rendo più facile da leggere e utilizzare la funzione
*/
double calculate_avg(int sum, int total){
    if(total == 0)
        throw 0;
    return static_cast<double>(sum) / total;
}

/*
Il modo migliore di fare try catch è quello di 
fare :
    Throw by value 
    and 
    Catch by reference
*/
int main(){
    double average{0};
    int sum{400};
    int total{0};

    try{
        average = calculate_avg(sum, total);
        std::cout << average << std::endl;
    }catch(int &ex){
        std::cerr << "Non puoi dividere per zero" << std::endl;
    }
    std::cout << "Continue" << std::endl;

}