#include <iostream>
#include <string>
#include <vector>
#include <math.h>
#include <functional>
#include <execution>

int square(int &n){
    return n*n;
}

int main(){
    // valori left e valori right
    // l-values
    //      - valori che nanno un nome e che stanno a sinistra di un
    //        uguaglianza, salvano dei dati, quindi solitamente 
    //        sono delle locazioni
    int x {100}; // x è un l-value
    x = 2000;
    x = 1000 + 20;
    // 10 = x non è possibile

    // r-values ( valori che non sono l-values)
    //      - stanno nella sezione destra di un'uguaglianza
    //      - sono dei literals come 10 o "ciao"
    //      - una chiamata ad una funzione 
    int max = 10; // 10 è un letterale quindi un r-value
    int y = (x + 100);
    int s = std::max(10, 11);

    // !!!! IMPORTANTE !!!!
    int xx {100};
    int &ref1 = x;      // ref1 è un riferimento a l-value
    // Per questo motivo posso passare i valori ad una funzione
    // se ha & nell'intestatzione senza dover passare per il 
    // puntatore
    ref1 = 1000;
    std::cout << x << std::endl;

    // non posso ovviamente fare
    // int &ref2 = 100; // 100 non è un l-value
    square(xx); // lo posso fare siccome xx è un l-value
    // square(5); non lo posso fare siccome 5 è r-value 
    return 0;
}