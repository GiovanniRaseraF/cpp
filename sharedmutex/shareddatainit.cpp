/*Shared data initializzation*/

/*
Global var, static var in un namespace

Static in una classe

una variabile nello stack locale che è dichiarata static

*/

#include <iostream>

class singleton{
    private:
    int value = 0;
    singleton() = default;
    singleton(singleton &&) = delete;
    singleton(const singleton &) = delete;
    singleton& operator=(const singleton &) = delete;
    singleton& operator=(singleton &) = delete;

    public:
    static singleton &get(){
        static singleton single;
        return single;
    }

    void setValue(int value){
        this->value = value;
    }

    int getValue() const {
        return this->value;
    }
};

int main(){
    singleton &s = singleton::get();
    s.setValue(2000);
    singleton &s2 = singleton::get();

    
    std::cout << s.getValue() << std::endl;
}