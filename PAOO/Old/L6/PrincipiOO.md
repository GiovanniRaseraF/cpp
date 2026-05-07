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

- Ad esempio i nomi dei parametri ad una funzione devono essere diverse
    - questo è un esempio di antidipendenza

## Freno alle dipendenze
- Se metto tutto nelle classi alcune dipendenze le nascondo
- Ho delle variabili locali che vedo solo in quel punto 
- Alta coesione, basso accoppiamento
    - Tenere unite le cose simili (commonality)
    - Separare le cose diverse (variability)

## Dominio
Ad esempio
    - ContoCorrente, Cliente, Data, Ora, Set
    - Flap, SerbatorioCarburante, Data, Ora, Set, List

Complessità, specializzazioe

### Ci sono 4 domini
#### Fondazionale
    - Classi di base, "buone per tutte le app che si possono creare"
    - Ad esempio int, bool, char, double
    - Classi strutturali
        - List, Set, Vector
    - Classi Semantiche
        - Clock, Persone

#### Architetturale
    - Classi per una piattaforma HW/SW
    - Classi per la comunicazione di rete
        - Porta, Host
    - Classi di gestione di dati
        - Transazione, Bakcup

#### Dominio Aziendale
    - Classi specifica all'azienda
        - Saldo
        - TemperaturaPaziente
    - Classi di Attibuto
        - Saldo, TemperaturaCorporea
    - Classi di Ruolo
        - Cliente, Medico
    - Classi di Relazione
        - ProprietàAuto
        - Intervento

#### Applicativo
    - Classi relative a una specifica applicazione
    - Classi di riconoscimento degli eventi
        - MonitorTemperaturaPaziente
    - Classi di gestione degli eventi
        - Cosa fare quando succede qualcosa
    
### Riuso
Se la classe stea verso Fondazionale è ok, ovviamente dovrò riusarlo

Se vado verso il livello Applicativo è raro che io riesca a riusare
    - Questo perchè una cosa specifica del dominio

### Librerie
Le librerie contengono classi Fondamentali e Architetturali

< Queste classi hanno un ingombro inferiore

Nei framework metto anche delle classi Applicative

### Make or Buy
Quando devo create un software uso cose gia fatte o le faccio io ? 

Solitamente si vendono classi del dominio Fondazionale

E si creano classi del tipo Applicativo

## Ingombro
Il numero di classi di cui una classe ha bisogno per funzionare

- Diretto
    - Se C eredita da D
    - C ha un attributo di tipo D
    - C ha un metodo che usa D

- Indiretto
    - La chiusura transitiva dell'ingombro diretto

- Def IngobroDiretto(C)
    - se C è Fondazionale -> 0 ingombro
    - il numero di riferimenti diretti se C non è Fondazionale
- Def IngobroINdiretto(C)
    - se C è Fondazionale -> 0 ingombro
    - il numero di riferimenti indiretti se C non è Fondazionale

L'ingombro è calcolabile automaticamente da un tool

## Legge di Demeter
Per qualsiasi metodo m di oggetti x della classe A, il distinatario dei messaggi nel corpo di m deve essere
    - x stesso (this)
    - Un oggetto presente come argomento di m
    - Un ogetto riferito da un attributo di x
    - un oggetto creato da m
    - un oggetto riferito da una variabile globale

Non cìè un oggetto restituito da un altro metodo

## Legge di Demeter Debole
Per qualsiasi metodo m di oggetti x della classe A, il distinatario dei messaggi nel corpo di m deve essere
    - x stesso (this)
    - Un oggetto presente come argomento di m
    - Un ogetto riferito da un attributo di x (EREDITATI anche)
    - un oggetto creato da m
    - un oggetto riferito da una variabile globale

## Non usare mai pià di un punto
