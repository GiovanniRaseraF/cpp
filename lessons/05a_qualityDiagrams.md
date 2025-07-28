# Cosa vuol dire modelli di qualità ? 
Non è solo il progetto ad avere qualità,
anche come viene descritto

Ci sono delle regole stilistiche difficili

Bisogna dare delle linee quida

Un modello è utile se da informazione
    - deve farlo a colpo d'occhio 

L'utilità di un modello dipende da:
    - Forma sintattica
    - scopo 
    - livello di dettaglio

## Regole e linee guida
### Leggibilità
- avitare lineee incrogiate
- evitare lineed diagonali e curve
- Usare la simmetria
    - aiuta alla comprensione
- Usare (opportunamente) lo spazio bianco
- Organizzare i diagrammi da "in alto a SX verso in basso a DX"
- Dare significato alla grandezza dei siboli
    - La grandezza delle classi grandi dovrebbe essere proporzionale alla sua importanza
### Semplicità
- Mostra solo quello che si deve mostrare
    - disegnare diagrammi semplici
- Preferire la notazione di UML nota
    - quel 20% di sintassi UML che tutti sanno
- Evitare diagrammi grandi
    - mettere le parti in package
    - Regola del 7 +/- 2 che vuol dire che l'umano riesce a mettere nella sua ram del cervello max 9 cose
- Il diagramma dovrebbe stare in un foglio A4
- Prima penso al contenuto e poi penso alla semplicità e a cosa devo far arrivare  
- Descrivere il diagramma con una nota UML per fare da legenda
- Usare il font adeguato

### Scelta dei nomi 
- Essere consistenti con la convenzione
- Usare terminologia del dominio
- Nei diagrammi concettuali non ha senso scrivere in modo troppo tecnico
- Essere coerenti
    - Stessi nomi per stesse cose, meno sinonimi possibile
    - (Non solo sui nomi)
    - Il documento è scientifico quindi va bene usare ripetizioni

### Generali
- Se sono indeciso su qualcosa metto un "?"
- Usare "..." per indicare elementi non completi
- Considerare l'uso del colore
- Usare responsabilità invece di attributi
    - questo quando faccio la parte di analisi

### Simboli si classe
- il nome singolare es. Persona
    - no abbreviazioni
- Uare verbi "chiari" 
    - openAccount() no openAcc()
    - Print Mailing Label
    - Save the Object -> save()
- Usare nomi del dominio per gli attributi
    - as esempio con uso di gloassario
- Non modellare dettagli implementativi
    - get/set , toString, codici / indici di oggetti NON servono
- Etichettare i compartimenti non standard
    - vincoli, eccezioni, invarianti, ecc
- "..." per indicare incompletezza
- Elencare attributi e operazioni in odirne di visibilità decresciente
    - + # - 
- Indicare i dipi non i nomi dei parametri formali
- Se una classe implementa/realizza u'interfaccia, non ripetere le operazioni dell'interfaccia nella classe

### Tutte le relazioni
- Preferire linee orizzontali 
    - ma non per l'ereditarità
    - Baruzzo dice che sono meglio le dipendenze dal basso verso l'alto
- Preferire relazioni "ad albero" anzichè separate
- Indicare sempre le molteplicità
- Evitare la molteplicità *, melgio usare 0..* o 1..*
- Evitare le classi "ovvie"
    - Persona ---- Date .. non serve basta mettere l'attributo
- Non serve modellare tutte le dipendenze
