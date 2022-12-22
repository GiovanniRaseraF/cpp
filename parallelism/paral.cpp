#include <parallel/algorithm>

/*
Quando parlo di concurrency, ogni processo si occupa del suo lavoro ed è un task 
distinto
Nella concorrenza posso anche eseguire tutto nello stesso processore

Nel parallelismo devo avere più di una CPU o GPU per fare i task
serve a migliorare le performace del programma

Parallelismo esplicto:
dico come deve essere fatto il processing, ad esempio creo 4 processo che lavorano su 
4 parti di un vettore
NON è scalabile, ad esempio in GPU
Lo faccio se sto facendo per un hardware specifico come la PS4 o un STM 

Parallelismo implicito:
Il programma si scala rispetto all'hardware
Lo uso in GPU

*/