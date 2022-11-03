/*
Custom deleters

- Avvolte quando distruggo uno smart pointer devo
mettere a disposizione un custom deleters

- posso farlo con funzione o lambda
*/
#include <memory>
class test{
    public:
    int a = 0;
    test() : a{0}{}
};

void my_deleter(test *ptr){
    delete ptr;
}

int main(){
    std::shared_ptr<test> ptr{
        new test(),
        my_deleter}; 

    // Utilizzo lambda
    std::shared_ptr<test> ptr2{
        new test(), 
        [](test *ptr){
            delete ptr;
        }
    };
}