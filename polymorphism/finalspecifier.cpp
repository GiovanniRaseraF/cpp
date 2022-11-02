/*
La keyword di final serve in due casi:
    - caso di utilizzado a livello della classe
        - non posso derivare la classe
    
    - caso di utilizzo a livello di funzione 
        - non posso overridare la funzione della classe
        derivata
*/

class base final{


};

// perche base è final
class derived : public base{
    // non posso farlo
};