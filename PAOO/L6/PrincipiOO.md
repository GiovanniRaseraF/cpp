# Principi OO

## Incapsulamento
- Obiettivo: raggruppare e rendere inaccessibile 
- Comporta: Information Hiding -> faccio vedere solo l'interfaccia

### Livello 0
    - Codice gresso, nessun incapsulamento
    - la riga di codice non incapsula nulla
### Lilvello 1
    - Sottopgragramma: insieme di istruzioni
    - Una Funzione
### LIvello 2
    - Prendo funzioni e credo
    - CLASSI
### Livello 3
    - Prendo le classi e le metto in package

### Misure di buona modularizzazione
### Livello 1
    - Coesione
        - Quante le linee di codice sono dedicate ad una singola missione

    - Accoppiamento
        - Quanto due procedure fanno la stessa cosa ? 
    
    - Voglio Alta Coesione e Basso Accoppiamento

    - Ventaglio
        - Dal numero di riferiemnto ad altri sottoprogrammi
    
    - Il ventaglio NON deve essere troppo ampio, altrimenti dipende troppo
    da altri programmi (ma non è cosi forte)

### Livello 2
    - Coesione di Classe
        - Quanto le linee di codice della classe centrano con quella classe

    - Accoppiamento di classe
        - Connessione tra classi e quanto fanno le stesse cose
    
    - Ingombro
        - Il numero di riferimenti ad altre classi

    - Alta Coesione [di classe], basso accoppiamento [di classe] (basso ingobro se possibile)

## Dipendenza
Cosa vuol dire dipendenza ? 
    - Due elementi software A e B sono dipendenti se:
        - Esistono modifice di A che richiedono la modifica di B
        - Eistono modifiche che richiedono di modificare insieme A e B per mantenere la correttezza
#### Nove tipi di dipendenza
###### Statiche
- Di Nome
    - Nome di variabile 
    - Dichiarazione e invocoazione di funzioni
- Di Tipo
    - Devo essere coerente
- Di convenzione
    - Ad esempio se metto
    0 = nord, 1 = est
    if (direzione == 0)...
    else ...

    Se poi scambio nord e est allora il codice cambia
- Di algoritmo
    - Funzione hash
    - Codicia e decodifica
- Di Posizione
    - le istruzione vanno messe nell'oridne giusto ovviamente
- Di Parametri a funzioni
###### Dinamiche
- Temporale
    - Sistemi real time
    - Termina l'esecuzione di una istruzione deve terminare entro t secondi
- Di valore
    - La somma degli angoli di un triangolo deve essere pigreco
    - Valori devono essere coerenti tra le basi di dati se condivise
    - Duplicazione e ridondanza
- Di identità
    - Alias di variabili

Le dipendenze software sono tante 

Avvolte ho anche delle Antidipendenze
- Ad esempio dipendente di differenza 
- Se ho una ereditarietà multipla devo stare attento ai metodi con lo stesso nome

