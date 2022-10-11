#include <iostream>
#include <string>
#include <vector>
#include <memory>

int main(){
    // Differenze del passaggio dei puntatori
    /*
    Tre modi diversi di passare i puntatori:
        - puntatori a costanti
        - puntatori che sono costanti
        - puntatori che sono costanti a costanti
    */

    int high_score{100};
    int low_score{65};
    const int *score_ptr{&high_score};
    
    // Non posso modificare il contenuto del valore puntato 
    // Ma il puntatore SI

    //*score_ptr = 86; // Errore
    score_ptr = &low_score; // OK


    // In questo caso posso modificare i valore puntato 
    // ma non il puntatore in se
    int *const score_ptr2{&high_score};
    *score_ptr2 = 86; // OK
    //score_ptr2 = &low_score; // Error

    const int *const score_ptr3{&high_score};
    // NON posso fare nulla


    return 0;
}