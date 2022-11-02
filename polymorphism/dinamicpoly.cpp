#include <memory>
#include <vector>
#include <iostream>
#include <string>

class account{
    public: 
    double balance;
    
    virtual void say() const {
        std::cout << "account hello" << std::endl;
    }
    // Obbligatorio mettere il virtual distructor
    virtual ~account(){
        std::cout << "account distructor" << std::endl;
    }
};

class savings : public account{
    public:
    virtual void say() const override{
        std::cout << "savings hello" << std::endl;
        account::say();
    } 

    virtual ~savings(){
        std::cout << "savings distructor" << std::endl;
    }
};

class trust : public savings{
    public:
    virtual void say() const override{
        std::cout << "trust hello" << std::endl;
    }

    virtual ~trust(){
        std::cout << "trust distructor" << std::endl;
    }
};

int main(){
    // è importante dire che le funzioni sono 
    // bindate dinamicamente solo se si utilizzano
    // puntatori
    std::vector<std::shared_ptr<account>> vet{
        std::make_shared<account>(), 
        std::make_shared<savings>(),
        std::make_shared<trust>(),
    };

    for (auto v : vet){
        v->say();
    }    
}