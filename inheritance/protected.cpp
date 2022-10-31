/*
I membri protected sono dei membri che sono accessibili dalla classe
e accessibili anche dalle classi che la derivano 

non sono accessibili dal'esterno
*/

class base{
    public:
    int a{0};
    protected:
    int b{0};
    private:
    int c{0};
};

class public_derived : public base{
    // Posso accedere a:
    // a public
    // b protected
    // c NO ACCESS
    public:

    void access_base(){
        a = 200;
        b = 1000;
        // c = 6; // Non accessibile
    }

    int get_a(){
        return a;
    }
};

class protected_derived : protected base{
    // Posso accedere a:
    // a protected
    // b protected
    // c NO ACCESS
    public:
    void access_base(){
        a = 200;
        b = 100;
        //c = 4000; Non acc
    }
};

class private_derived : private base{
    // Posso accedere a:
    // a private
    // b private
    // c NO ACCESS
    public:
    void access_base(){
        // Posso accedere ai valori ma non posso
        // piu accedervi dalle classi derivate
        a = 20;
        b = 1000;
    }
};


int main(){
    base base1;
    base1.a = 100;

    public_derived pub_derived1;
    pub_derived1.a = 200;

    protected_derived pro_derived1;
    //pro_derived1.a = 400; non lo posso fare siccome a 
    // è divantato protected

    private_derived priv_derived1;
    // Non posso accedere a nulla della classe derivata
    // Solo se dichiaro delle nuove cose public all'interno 
    // della classe derivata
}