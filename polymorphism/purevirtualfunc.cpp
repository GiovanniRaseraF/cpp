/*
Una classe astratta non può essere istanziata
Una classe concreta può essere istanziata

devo derivare le classi astratta

Una classe astratta è una classe che ha almeno una funzione 
puramente astratta

virtual void func() = 0;

se voglio creare una classe concreta devo overridare tutte
le funzioni puramente astratte
*/
#include <iostream>
#include <string>
#include <memory>
#include <vector>

class account{
    public:
    // Funzione puramente virtuale
    virtual void func() = 0;
};


class shape{
    public:
    virtual void draw() = 0; // puramente virtuale
    virtual void rotate() = 0; // puramente virtuale
    virtual ~shape(){}
};

class openshape : public shape{
    public:
    virtual ~openshape() {}    
};

class closedshape : public shape {
    public:
    virtual ~closedshape(){}
};

class line : public openshape{
    public: 
    virtual void draw() override {
        std::cout << "line" << std::endl;
    }

    virtual void rotate() override {
        std::cout << "line rotate" << std::endl;
    }
    ~line(){}
};

class cube : public closedshape {
    public:
    virtual void draw() override {
        std::cout << "cube" << std::endl;
    }

    virtual void rotate() override {
        std::cout << "cube rotate" << std::endl;
    }

    ~cube(){}
};

int main(){
    line l{};
    shape &s_l = l;

    s_l.draw(); 

    std::shared_ptr<shape> sh = std::make_shared<line>();

    sh->draw();

    // con vettori
    std::cout << "\n\n\nVettori\n";
    std::vector<std::shared_ptr<shape>> vet{};

    vet.push_back(std::make_shared<line>());
    vet.push_back(sh);
    vet.push_back(std::make_shared<cube>());

    for (const auto v : vet){
        v->draw();
    }    

}
