# Asserzioni
- L'invariante potrebbe diminuire lo spazio degli stati

## Precondizioni
- Condizione che deve essere vera subito prima dell'esecuzione del metodo

- esempio: 
    - int sqrt(int x)
        - pre: x >= 0

- Se la precondizione non è derivabile, il risultato è NON Predicibile
- La pre può parlare di parametri, e stato dell'istanza

## Postcondizione
- Condizione che deve essere vera subito dopo l'esecuzione del metodo

- Esempio: int sqrt(int x)
    - post: res * res <= & (res + 1) * (res + 1) > x

- Se la post non è verificata, il metodo è sbagliato

- Dopo ogni ogni metodo deve essere vera sia la POST che INVARIANTE DI CLASSE

## Esempio
Clas Pila(limitata)
    - pust() top() pop() piena() vuota()
    - push()
        - pre: !piena()
        - post: !vuota() / numElem == old(numElem) + 1 & top() == x
    - pop
        - pre: !vuota()
        - post: !piena() & numElem == old(numElem) -1 
    - top
        - pre: !vuota()
        - post: res == a[numElem-1]

- Fare questo lavoro è difficile senza esporre l'implementazione
