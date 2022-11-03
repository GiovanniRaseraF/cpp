/*
RAII: Resource acquisition is initialization

- Idioma comune o pattern utilizzato nei software basato sul ciclo di vita di un 
oggetto

- Gli oggetti RAII sono allocati nello stack

Le parole che costituiscono questo idioma sono:

Resource Acquisition:
    - Aprire un file
    - Allocare memoria
    - Aquisire un lock

Is initialization:
    - La risorsa è acquisita in un costruttore

Resource relinquishing:
    - Succede nel distructor
        - Chiudere il file
        - Deallocare la memoria
        - Rilasciare il lock

è un concetto molto semplice che std::smart_ptr garantisce

*/