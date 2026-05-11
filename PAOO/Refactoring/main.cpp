// 1. Exstract Method
// From
void stampaRendimento(double ammontare){
    stampaIntestazione();

    // stampa dettagli
    std::cout << "None" << _none << std::endl;
    std::cout << "Ammontare" << ammontare << std::endl;
}

// To
void stampaRendimento(double ammontare){
    stampaIntestazione();
    stampaDettagli(ammontare);
}

void stampaDettagli(double ammontare){
    // stampa dettagli
    std::cout << "None" << none << std::endl;
    std::cout << "Ammontare" << ammontare << std::endl;
}

// 2. Inline Method
// Lo uso nel momento in cui il corpo
// del metodo è chiaro e molto semplice
// ed è completamente spiegato dal nome
// del motodo
// From
int getPuntualita() {
    return (piuDiCinqueSpedizioniInRitardo()) ? 2 : 1;
}

bool piuDiCinqueSpedizioniInRitardo() {
    return _numeroSpedizioniInRitardo > 5;
}

// To
int getPuntualita() {
    return (_numeroSpedizioniInRitardo > 5) ? 2 : 1;
}

// 3 Inline Temp
// Elimino una variabile usata con unico valore
// Oddio dipende secondo me
// Per me meglio avere codice leggibile
// Dipende anche se la computazione è complessa
// From 
void foo(){
    double prezzoBase = oridine.prezzoBase();
    std::cout << prezzoBase << std::endl;
    return prezzoBase > 100;
}

// To
void foo(){
    std::cout << ordine.prezzoBase() << std::endl;
    return ordine.prezzoBase() > 100;
}

// 4 Replace Temp With Query
// Lo uso per estrarre il risultato di una espressione
// Quando assegno una espressione direttamente ad una var
// allora porto l'espressione in una funzione
// Anche questo non mi convince al 100 * 100
// from
void foo(){
    double prezzo = _quantita * _prezzoArticolo;
    if (prezzo > 1000){
        return prezzo * 0.3;
    }else{
        return prezzo * 0.5;
    }
}

// to
void foo(){
    if (prezzo() > 1000){
        return prezzo() * 0.3;
    }else{
        return prezzo() * 0.5;
    }
}

float prezzo(){
    return _quantita * _prezzoArticolo;
}

// 5 Introduce Explaining Variable
// Quando ho una espressione complicata
// una una variablie temporanea e 
// metto in risalto le componenti 
// importanti

// 6 Split Temporaty Variable
// Se ad una variabile temporanea
// Assegno due valori diversi di due
// espressioni diverse allora lo faccio diventare 2 variabili
// From
void foo(){
    auto varTemp = 23 * _auto * 45 * prezzo;
    auto ret = varTemp * 45;
    varTemp = ret * 65 + numeroRotte;
    return varTemp;
}

// To
void foo(){
    auto varTemp = 23 * _auto * 45 * prezzo;
    auto ret = varTemp * 45;
    auto varTemp2 = ret * 65 + numeroRotte;
    return varTemp2;
}

// 7 Remove Assignments to Parameters
// Il corpo di un metodi non dovrebbe toccare e modificare
// i parametri passati come valori
// Se faccio dele modifice meglio compiare il valore su na variabile
// from 
int sconto(int valoreInput) {
    if (valoreInput > 50) {
        valoreInput -= 2;
    }
    return valoreInput;
}

// to
int sconto(int valoreInput) {
    int result = valoreInput;
    if (valoreInput > 50) {
        result  -= 2;
    }
    return result;
}

// 8 Replace Method with Method Object
// Sono nel caso in cui ho un metodo molto lungo in 
// cui uso molte variabili locali
// Quindi creo una nuova classe con le variabili locali 
// come attributi e aggiungo il metodo da chiamare
// From
class Oridine {
    double prezzo(){
        double prezzoBasePrimario;
        double prezzoBaseSecondario;
        double prezzoBaseTerziario; 
        // ... Calcolo Lungo
    }
};

// To
class CalcolatorePrezzo{
private:
    Oridine o;
    double prezzoBasePrimario;
    double prezzoBaseSecondario;
    double prezzoBaseTerziario; 
public:    
    CalcolatorePrezzo(Ordine o);
    int calcola();
};

class Ordine{
    double prezzo(){
        auto calcolatore = CalcolatorePrezzo(this);
        return calcolatore.calcola();
    }
};

// 9 Substitute Algorithm
// Semplicemente sostituisco un algoritmo con un'altro
// a patto che questo funzioni nello stesso modo
// potrei usare lo strategy ....

//////////////////////////////////////////////////////////
// Spostamenti fra oggetti

// 1 Move Method
// Un metodo usa più caratteristiche di un'altra classe che
// della propria, 
// quindi:
// Creo un nuovo metodo nella classe usata che fa la stessa cosa
// e uso la delega del lavoro.

// 2 Move Field
// Ho un attributo nella classe sbagliata e quindi lo muovo
// in quella in cui serve di più

// 3 Extract Class
// Quando ho bassa coesione di classe, ho una classe
// che fa più di una cosa
// quindi:
// Divido e faccio due classi

// 4 Inline Class
// Ho una classe che fa molto poco, 
// quindi:
// La unisco ad un'altra classe be darne magari un senso nel 
// dominio applicativo

// 5 Hide Delegate
// Ho una classe che ha un delegato e il client lo può vedere
// quindi:
// Aggiungo un metodo mio oggetto e chiama il delegato
// From
class Oggetto {
public: 
    Delegato delegato;
};

class Delegato {
    void m(){}
};

int main(){
    Delegato d = Delegato()
    Oggetto o = Oggetto(d);

    // non ha senso...
    d.m();
}

// to:
class Oggetto {
    Delegato delegato;
    void m(){
        delegato.m();
    }
};

class Delegato {
    void m(){}
};

int main(){
    Oggetto o = Oggetto();
    o.m();
}

// 6 Remove Midle Man
// il contrario di Hide Delegate
// Se la classe Oggetto fa troppo in più
// Meglio che il Client parli direttamente con il Delegato

// 7 Introduce Foreight Method
// Un client sta usando una classe Servitore
// Sarebbe comodo avere un metodo in piu nel Servitore
// quindi:
// Creo un metodo static "esterno" in Client che prende 
// come primo argomento l'istanza di Servitore

// 8 Introduce Local Extension
// Se il foreight method è scomodo mi creo una 
// sottoclasse di Servitore e uso quella

/////////////////////////////////////////////////////////
// Organizzazione dei dati

// 1 Self incapsulate field
// Creo un metodo getXX e setXX per accedere agli attributi

// 2 Replace Data Value with Object
// Una classe ha un attributo che potrebbe essere 
// messo in una classe a se, anche piut di uno
// quindi:
// Creo una classe che ha quegli attributi
// from
class Oridine {
    std::string cliente;
    std::string datadinascita;
    // other
};
// to
class Ordine {
    Cliente cliente;
};

class Cliente {
    std::string cliente;
    std::string datadinascita;
};

// 3 Change value to Reference
// Ho una classe con molte istanze uguali che non mutano
// se non ho tante ho un problema di memoria
// vedi flyweight
// quindi:
// uso un riferimento ad un oggetto

// 4 Change reference to Value
// Avvolte è scomodo usare i riferimenti e a mantenere le 
// differenze,
// quindi:
// Creo istanze diverse

// 5 Replace array with object
// Se un array contiene informazioni concettuali diverse
// lo metto ina classe
// from
class 3DVector{
    std::array<int, 3> xyz;
};
// to
class 3DVector{
    int x;
    int y;
    int z;
};

// 6 Duplicate Observed Data
// Uso una divisione dei dati tra font end e backend
// e uno il pattern observer per sincronizzare le due parti

// 7 Change Unidirectional Association to Bidirectional
// Se ho bisongo di riferimenti circolari tra due classi
// quindi:
// Lo aggiunggo
// Ma ho bisogno di una forward declaration

// 8 Change Bidirectional Association to Unidirectional
// Inverso di quello precedente
// Meglio non generare cicli

// 9 Replace Magin Number with Symbolic Constant
// Si non sempre

// 10 Encapsulate Field
// Invece di mettere field public, usare quelli private
// e mettere getter e setter

// 11 Incapsulate Collection
// Se ho un set di dati nella mia classe
// aggiungo dei metodi per aggingere e rimuovere 
// dati direttamtne dalla mia classe non ritornando 
// il vettore direttamente
// Se un client vuole vedere lo stato allora ritorno una
// copia

// 12 Replace Record with Data class
// invece di usare struct uso class
// questo non è vero...

// 13 Replace Type Code with Class
// Invece di usare una int e un swith per 
// dei tipi diversi uso gli 
// ENUM ... e basta...

// 14 Replace Type code with subclass
// Se sto implementato una cosa dipo 
// Persona è studente o lavoratore
// con una variabile booleana
// quindi:
// Uso una sottoclasse
// from
class Persona {
    bool isStudente;
};
// to
class Persona {
};

class Studente : Persona{
};
class Lavoratore : Persona{
};

// 15 Replace Type Code with State / Strategy
// Se durante l'esecuzione del programma la tipologia
// della poersone può cambiare allora usare questa versione
// to:
class Persona {
    TipoPersone type;
};

class TipoPersone{};
class Studente : TipPersona{};
class Lavoratore : TipoPersona{};

// 16 Replace subclass with Field
// Il contrario di quello precedente
// Se mi accordo che le sottoclassi alla fine 
// Fanno la stessa cosa, allora le rimuovo 
// e torno alla versione di persona precedente

////////////////////////////////////////////////////
// Semplificazione di espressioni condizionali

// 1 Decompose Conditional
// se ci sono delle espressini complicate all'interno
// dei corpi dell'if then else
// Anche se le espressini dentro gli if sono cimplicate
// quindi:
// deconpongo in metodi diversi esterni
// from 
void foo(){
    if (data.primadi(INIZIO_ESTATE) || data.dopoDi(FiNE_ESTATE)){
        ...
    }else{
        ...
    }
}
// to
void foo(){
    if (not inEstate(data)){
        ..
    }else{
        ..
    }
}

// 2 Consolidate Conditional Expression
// Una sequenza di condizionali con lo stesso
// risultato
// quindi:
// Le consolido in una chiamata di metodo
// from
double quantitaDisabilitata(){
    if (anzianita < 2) return 0;
    if (mesi > 12) return 0;
    if (partime) return 0;
    ....
}

// to
double quantitaDisabilitata() {
    if (nonHaDiritto()) return 0;
}
bool nonHaDiritto(){
    return (anzianita < 2) || (mesi > 12) || (partime);
}

// 3 Consolidate Duplicated Conditional Fragments
// Sto facendo la stessa cosa in due rami if
// Quindi:
// Lo faccio alla fine dopo tutto.
// from
void foo(){
    if () {
        tot = prezzo * 2;
        spedisci();
    }else {
        tot = prezzo * 3;
        spedisci();
    }
}

//to
void foo(){
    if () {
        tot = prezzo * 2;
    }else {
        tot = prezzo * 3;
    }

    spedisci();
}

// 4 Remove Control Flags
// Quando sono in un ciclo e devo uscire meglio
// usare il break e non le flag per il controllo
// from
void m (String[] persone){
    boolean trovato = false;
    for (int i = 0; i < persone.length & !trovato; i++){
        if(persone[i].equals("Meni")) {
            attenzione();
            trovato = true;
        }
        if(persone[i].equals("Toni")) {
            attenzione();
            trovato = true;
        }
    }
}

// to
void m (String[] persone){
    for (int i = 0; i < persone.length; i++){
        if(persone[i].equals("Meni")) {
            attenzione();
            break; o return;
        }
        if(persone[i].equals("Toni")) {
            attenzione();
            break; o return;
        }
    }
}

// 5 Replace nested Conditionals with Guard Clause
// Annidare gli if risulta molto psresso pericoloso
// Meglio usare una sequenza di soli if e return
// from:
double getAmmontare (){
    double res = 0;
    if(morto) res = ammontareMorto();
    else {
        if (separato) res = ammontareSeparato();
        else {
            if (pensionato) res = ammontarePensionato();
            else res = ammontareNormale();
        }
    }
    return res;
}

// to
double getAmmontare (){
    if (morto)      return ammontareMorto();
    if (separato)   return ammontareSeparato();
    if (pensionato) return ammontarePensionato();
    return ammontareNormale();
}

// 6 Replace conditional with polymorphism
// Questo è ovvio, non ha senso avere una 
// variabile che mi dice il tipo del mio oggetto
// ma ha senso usare le sottoclassi

// 7 Introduce Null Object
// Invece di usare Null nell'if
// uso una sotto classe della mia classe e la chiamo
// ClientNull e la metto come Sigleton...
// booooh non ha molto senso secondo me 

// 8 Introduce Assertion
// Se ho qualche asserzione da fare as esempio
// uso le asserzioni
// from
if (x >= 0){
    return sqrt(x)
}
// to
assert x >= 0;
return sqrt(x);

// booh anche qui non mi pare ottimo

//////////////////////////////////////////////////
// Semplificazioni di invocazioni di metodi

// 1 Rename Method
// Modifico il nome di un metodo per renderlo più 
// comprensibile

// 2 Add parameter
// Ho un metodo con 2 parametri e ne aggiungo un 
// 3 terzo
getTelefono() -> getTelefono(prefisso)

// 3 Remove Parameter
// Stessa cosa ma rimuovo siccome mi accorgo che non
// serve

// 4 Separate Query from Modifier
// Ho un metodo che fa due cose
// Restituisce un valore
// Modifica un oggetto
// Divito per coesione:
// Se un metodo restituisce un valore non dovrebbero
// essercidi dei side effect assiociati.

// 4 Parameterize Method
// Ho metodi che fanno cose simili e posso parametrizzare
// Qindi avevo una fat interface adesso semplifico
// from
aumenta10Percendo()
aumenta50Percendo()

// to
aumenta(percentuale)

// 6 Replace Parameter with explicit Methods
// Inverso da precedenete
// Ho un medoto che fa diverse cose in base 
// a cosa gli passo
// from
interruttore.set(on)
// oppure
interruttore.setStateOn(True)

// to
interruttore.on()
interruttore.off()

// 7 Preserve Whole Object
// Non decomporre un oggetto quando lo passo ad un
// metodo

// from
void distance(x, y, x1, y1){}
Point p1;
Point p2;
distance(p1.x, p1.y, p2.x, p2.y)

//to
void distance(p1, p2){}
Point p1;
Point p2;
distance(p1, p2)

// 8 Replace Parameter with Method
// Lascio la responabilià ai metodi interni di 
// prendesi i valori che servono non li passo io 

// 9 Introduce Parameter Object
// Se ho una funzione che ha dei parametri che
// "starebbero bene insieme"
// li unisco in un oggetto
// from
m(inizio: Date, fine: Date)..

// to
m(intervallo: Intervallo)

class Intervallo {
    Date inizio;
    Date fine;
};

// 10 Remove Setting Method
// Se non serve che un certo parametro x in una 
// classe allora ne rimuovo il setter

// 11 Hide Method
// Ho un metodo che non viene mai usato da nessuno
// lo rendo privato..


// 12 Replace Constructor with FactoryMethod
// booh non mi pare sia cosi utile

// 13 Encapsulate Downcast
// Se dopo lesecuzione di un metodo devo fare un downcast
// meglio avere il downcast dentro al metodo

// 14 Replace error code with exception
// Va bene io fare una cosa differente
// userei replace error with expected

// 15 Replace Exception with test
// inverso del precedente
// non sono d'accordo in pythond è meglio farlo

//////////////////////////////////////////////////
// Gestione della generalizzazione

// 1 Pull Up Field
// Due classi stanno usando lo stesso attributo
// quindi:
// Porto l'attributo nella classe base


// 2 Pull Up Method
// Due sottoclassi che hanno due metodi identici
// quindi:
// Sposto il metodo nella classe base

// 3 Pull Up constructor body
// Ho due sottoclassi con il costruttore simile
// quindi:
// prendo la parte comune e la porto nella classe base

// 4 Push Down Method
// Un comportamento appartinee solo ad una sottoclasse
// quindi:
// Lo prendo dalla classe base e lo metto in quella 
// sottoclasse specifica


// 5 Pull Down Field
// Ho un attributo che viene usato solo in alcune 
// sottoclassi
// quindi:
// Lo prendo dalla classe base e lo porto nella sottoclasse
// interessata

// 6 Exstract Subclass
// Ho una classe ad istanza con coesione ad istanza mista
// dove la classe fa delle cose tramite un typeflag..
// quindi:
// Introduco delle sottoclassi per specializzare 

// 7 Estract Superclass
// Ho due classi con caratteriestiche simili e 
// che hanno del comportamento copiato
// quindi:
// Creo una classe base e metto le mie classi come 
// sottoclassi

// 8 Exstract Interface
// Stessa cosa di Exstract subclass solo che
// vado a guardare solo il nome dei metodi 
// e il comportamtneo finale non l'implementazione

// 9 Collapse Hierarchy
// Classe base e sottoclasse sono molto simili
// quindi:
// le faccio diventare una unica

// 10 Form Template Method
// Ho in due sottoclassi du metodi due metodi 
// che fanno la stessa cosa ma cambia il comportamento
// di un parte oppure un check
// introduco quindi il Template Method pattern
// e sposto l'algo nella classse base
// e i compotamenti diversi nelle sottoclassi

// 11 Replace Inheritance with Delegation
// Molte una sottoclasse che una solo una parte
// dell'interfaccia della superclasse oppure
// rompe i contratti o principio di liskov substitution
// quindi:
// Trasformo la sottoclasse e aggiungo un attributo 
// che punta ad una instanza della sopraclasse
// e implemento tutto tramite delega

// 12 Replace Delegation with Inheritance
// Ho troppe deleghe banali ..
// quindi:
// Trasformo in sottoclasse


