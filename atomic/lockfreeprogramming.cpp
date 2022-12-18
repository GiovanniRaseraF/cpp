/*
Lock free programming

è una tecnica che permette di far si che i programming eseguano le sezioni critiche 
senza l'assistenza del sistema operativo e delle sue feature di locking

riduce gli svantaggi dell'utilizzo di locks
    - rage condizions
    - deadlocks
    - tanto overhead per mantenere le risorse e fare le chiamate di sistema
    - poca scalabilità

se la programmazione lock free è fatta bene i thread non si possono bloccare tra di loro
    - non ci sono possibilità di deadlock o livelock
    - se un thread è bloccato, altri thread possono continuare ad eseguire 
    - utile se il sistema deve eseguire in un limite di tempo:
        - (real time systems)
    

*/


