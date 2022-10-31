/*
Il copy constructor e il move non sono 
ereditati dalla classe base

- è possibile chiamare esplicitamente il costruttore della base
dalla classe derivata
*/
#include <iostream>
#include <string>

class base{
    private:
    int value;
    public:
    base() : value{0}{
        std::cout << "No-args base" << std::endl;
    }
    base(const base &to_copy) : value{to_copy.value}{
        std::cout << "Copy base" << std::endl;
    }
    base(base &&to_move) : value{to_move.value}{
        std::cout << "Move base" << std::endl;
    }

    base &operator=(const base &to_copy){
        std::cout << "base = on copy" << std::endl;
        if (this != &to_copy){
            value = to_copy.value;
        }
        return *this;
    }

    base &operator=(base &&to_move){
        std::cout << "base = on move" << std::endl;
        if(this != &to_move){
            value = to_move.value;
        }

        return *this;
    }
};

class derived : public base{
    private:
    int double_value;
    public:
    derived() : base{}, double_value{0} {
        std::cout << "No-args derived" << std::endl;
    }
    derived(const derived &to_copy) : base(to_copy),
     double_value{to_copy.double_value}{
        std::cout << "Copy derived" << std::endl;
    }

    derived(derived &&to_move) : base{std::move(to_move)},
     double_value{to_move.double_value}{
        std::cout << "Move derived" << std::endl;
    }
    int get(){
        return double_value;
    }

    derived &operator=(const derived &to_copy){
        std::cout << "derived = on copy" << std::endl;
        if(this != &to_copy){
            base::operator=(to_copy);
            double_value = to_copy.double_value;
        }

        return *this;
    }

    derived &operator=(derived &&to_move){
        std::cout << "derived = on move" << std::endl;
        if(this != &to_move){
            base::operator=(std::move(to_move));
            double_value = to_move.double_value;
        }

        return *this;
    }
};


int main(){
    derived a;
    std::cout << std::endl;
    derived b{a};
    std::cout << std::endl;
    derived c{std::move(derived{})};
    int val =  c.get(); 


    std::cout << std::endl;
    a = c;

    std::cout << std::endl;
    b = derived();
}