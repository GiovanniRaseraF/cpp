# Asserzioni
- Def: Espressione logica che deve essere sempre vera in un certo punto del codice
    - Prove di correttezza di Hoare e invariante di cicli

- In OO abbaimo l'invariante di classe, precondizione e postcondizione
- L'asserzione deve essere sempre vera purchè l'istanza sia in equilibrio:
## Equilibrio di una Classe
    - Dopo l'esecuzione del costruttore
    - Dopo la fine dell'esecuzione di un metodo pubblico e quindi dopo la transazione
        - durante una transazione l'invariante può non valere

### Esempi
- Classe Triangolo
    - Inv: Somma lunghezza di due lati >= terzo lato
    - a + b >= c & a + c >= b & c + b >= a

## More
- L'invariante è una specifica migliore dello Spazio degli stati