#include <iostream>
#include <string>
#include <memory>
#include <fmt/core.h>
// The purpose of the decorator design pattern is to allow
// to extend a functionality of a class at run-time.
// For example a class using extension we can only extend functionality at
// compile-time.

class Decorable {
public:
    std::string name;
    virtual ~Decorable() = default;
    virtual std::string toString() = 0;
};

class Simple : public Decorable {
public:
    Simple(){
        name = "Simple";
    }
    std::string toString() override {
        return "[" + name + "]";
    }
};

class SimpleCube : public Simple{
public:
    SimpleCube(){
        name = "SimpleCube";
    }
    std::string toString() override {
        return "[" + name + "]";
    }
};


class Decore : public Decorable {
public:
    std::shared_ptr<Decorable> decorated;
    Decore(std::shared_ptr<Decorable> d) : decorated(d){}
    std::string toString() override {
        return "(" + name + "." + " " + decorated->toString() + ")";
    }
};

class BorderColor: public Decore {
public:
    std::string color;
    BorderColor(std::shared_ptr<Decorable> _d, std::string _color) : Decore(_d){
        name = "BorderColor";
        color = _color;
    }
    std::string toString() override {
        return "(" + name + "." + color + " " + decorated->toString() + ")";
    }
};


int main(){
    std::cout << "Test cube" << std::endl;
    std::shared_ptr<Decorable> d = std::make_shared<BorderColor>(std::make_shared<SimpleCube>(), "red");
    std::cout << d->toString() << std::endl;

    // Need to show that this can be done at runtime while using a for loop
    std::string input;
    std::shared_ptr<Decorable> first = std::make_shared<SimpleCube>();
    for(int i = 0; i < 5; i++){
        std::cout << "Color:>>"; std::cin >> input;
        first = std::make_shared<BorderColor>(first, input+std::to_string(i));
        std::cout << first->toString() << std::endl;
    }
    std::cout << first->toString() << std::endl;

    return 0;
}