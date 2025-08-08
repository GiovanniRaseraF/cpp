# Coesione di classe
- Misura di
    - Quanto l'interfaccia pubblica di una classe è coesa
    - Quanto corrispondenza reciproca c'è tra i pezzi (metodi e attributi) della classe

## 4 livelli di coesione
### Coesione a Istanza Mista
    - Per alcune istanze gli atributi sono definite e per altre no
    - Ache i metodi potrebbero essere definiti o no
    - Esempio:
        class Persone{
            +getMatricola()
            +getStipendio()
        }

        mario : Persona() -> non definisto getStipendio()
        stefano : Persona() -> non definisto getMatricola()

    - Soluzione
        class Persone{
            +getMatricola()
            +getStipendio()
            +isStudente()
        }

        int main(){
            if (m.isStudente())
                m.getMatricola()
        }

### Classe con coesione a dominio misto
    - Classe ingombrata con una classe estrinseca appartenente a un dominio diverso
    - B è estrinseca rispetto ad A sse "è possibile" definire A senza alcun riferimento a B

    - Estrinseca = non pertinente, "non c'azzecca"
        - contrario di intrinseca
    - Possiamo dire che anche questa è una fat interface
    - Es:
    Data è intrinseca rispetto a Persona
    Elefante è estrinseca rispetto a Persona 

    - Esempio:
        - Classe Double con metodo arctan()
        - nulla di strano ? 
            - equivalenteInMiglia()
            - ammountInEuro()
            - equivalenteInGradiCentigradi()
            - ... non ha senso
        - Motto OO
            - "Un oggetto deve sapere come fare qualcosa a se stesso"
            - Mmmmmm .... Non sempre ...
        - stampa() in class Documento ? 
            - Direi di NOOOO
        
    - Legame con i domini
        - Se progetto una classe 

### Classe con coesione a ruolo misto
    - Le due classi sono miste ma appartengono allo stesso dominio
    - Posso comunque avere una fat interface

### Coesione di Altenativa o Multipla
    - Altenativa
        - metodo: scala_O_Ruota ()
    - Multipla
        - metodo: scala_E_Ruota ()

    -- Decisamente queste due non vanno bene 
    -- Se ho una O nel metodo oppure un E nel metodo devo stare attento
        - Qeusto perche potrebbero fare troppe cose nella stessa funzione


