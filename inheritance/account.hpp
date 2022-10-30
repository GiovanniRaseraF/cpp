/*
- Account
    - balance, deposit, withdraw
- Savings Account
    - balance, deposit, withdraw, interest rate
- Cheking Account 
    - balance, deposit, withdraw, minimum balance, per check fee
- Trust Account
    - balance, deposit, withdraw, interest rate
*/

class account {

};

class savings : public account {

};

class checking : public account {

};

class trust : public account {

};

/*
Terminologia e notazione

Inheritance:
    - Creazione di una classe da una classe esistente che fa da genitore
    - meccanismo di riutilizzo
- Single inheritance:
    - Una nuova classe creata da un singola classe genitore
- Multiple inheritance:
    - Una nuova classe creata da più classi genitori

___
Base class :
    - classe che viene estesa, il genitore
Derived class:
    - class that extends another class   

_________________
|               |               _________________
|     base      |  <---------   |               |
|               |               |   derived     |
_________________               -----------------


///////
Importante il concetto di
Generalizzazione:
    - Combinazione di classi in una singola 
    e più generica
Specializzazione:
    - Creare nuove classi da quelle precedenti per 
    far si che facciano cose più specifiche



*/