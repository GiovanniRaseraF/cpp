int main(){

    /*
    Quando usare puntatori e quando i riferimenti
    - Passaggio per valore:
        - quando la funzione non modifica il parametro
            perchè tanto sarebbe una copia quindi il 
            cambiamento andrebbe perso
        - quando devo passare dei valori molto piccoli come
            int, char, double NON per grandi strutture come 
            oggetti o strutture pesanti
    
    - Passagio per riferimento usanto un puntatore
        - quando la funzione modifica il vero e proprio elemento
        - il parametro è costoso da copiare (esempio oggetto)
        - va bene che venga passato null

    - Passaggio per riferimento con puntatore a costante
        - quando la funzione non modifica il parametro passato
        - il parametro passato è costoso da copiare
        - va bene che venga passono nullptr
        
    - Passaggio per riferimento con puntatore costante a costante
        - quando la funzione non modifica il parametro passato
        - il parametro passato è costoso da copiare
        - posso passare il valore di nullptr 
        - non voglio che venga modificato il puntatore stesso
    
    - Passaggio per riferimento usando un riferimento & nell'intestazione della funzione
        - quando la funzione modifica il parametro passato
        - quando il parametro è costoso da copiare
        - il parametro non sarà mai passato come nullptr
    
    
    */

    return 0;
}