/*
Weak pointers

- Mette a disposizione un riferimento non di proprietà "weak"

il weak_ptr<T> ha queste caratteristiche:
    - Punta all'area di memoria di un oggetto nella heap
    - Non partecipa nella relazine di ownership
    - Viene creato sempre da un shared_ptr
    - non incrementa la use_count()
    - Viene utilizzato per prevenire riferimenti circolari che prevengono gli oggetti
    da essere eliminati perché sono interdipendenti


IL problema è quendo ho dei shared nel in due classi
*/

#include <iostream>
#include <string>
#include <vector>
#include <memory>

class B;

class A {
    std::shared_ptr<B> bptr;
    public:
    void set_B(std::shared_ptr<B> &b){
        bptr = b;
    }
    A(){std::cout << "A construct" << std::endl;}
    ~A(){std::cout << "A dist" << std::endl;}
};

class B{
    std::weak_ptr<A> aptr; // metto weak e ho risolto
    public:
    void set_A(std::shared_ptr<A> &a){
        aptr = a;
    }
    B(){std::cout << "B construct" << std::endl;}
    ~B() {std::cout << "B dist" << std::endl;}
};

int main(){
    std::shared_ptr<A> a = std::make_shared<A>();
    std::shared_ptr<B> b = std::make_shared<B>();

    a->set_B(b);
    b->set_A(a);

    return 0;
}