#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <thread>
#include <chrono>
#include <iomanip>


class Builder {
public:
    virtual void reset() = 0;
    virtual void buildStep1() = 0;
    virtual void buildStep2() = 0;
    virtual void buildStep3() = 0;
};

class Director{
    std::shared_ptr<Builder> builder;
public:
    Director(std::shared_ptr<Builder> _builder) : builder{_builder} {}
    void make(std::string type){
        builder->reset();

        if(type == "simple") {
            builder->buildStep1();
        } else if(type == "more") {
            builder->buildStep1();
            builder->buildStep2();
        } else {
            builder->buildStep1();
            builder->buildStep2();
            builder->buildStep3();
        }
    }

    void changeBuilder(std::shared_ptr<Builder> new_builder) {
        builder = new_builder;
    }
};

class Product1 {
    public:
    std::string name{"Piramid"};
    int walls{0};
    std::string color{"blue"};
    int height{0};

    std::string toString(){
        std::string ret{""};
        ret += "\tName:" + name + "\n";
        ret += "\tWalls: " + std::to_string(walls) + "\n";
        ret += "\tColor: " + color + "\n";
        ret += "\tHeight: " + std::to_string(height) + "\n";
        return ret;
    }
};

class Product2{
    public:
    std::string name{"House"};
    int walls{0};
    std::string color{"red"};
    int height{0};

    std::string toString(){
        std::string ret{""};
        ret += "\tName:" + name + "\n";
        ret += "\tWalls: " + std::to_string(walls) + "\n";
        ret += "\tColor: " + color + "\n";
        ret += "\tHeight: " + std::to_string(height) + "\n";
        return ret;
    }
};

class ConcreteBuilder1 : public Builder {
    std::shared_ptr<Product1> result;
public:
    void reset() override {
        result = std::make_shared<Product1>();
    }
    void buildStep1() override {
        result->walls = 4;
    }

    void buildStep2() override {
        result->color = "blue";
    }

    void buildStep3() override {
        result->height = 10;
    }

    std::shared_ptr<Product1> getResult(){
        return result;
    }
};

class ConcreteBuilder2 : public Builder {
    std::shared_ptr<Product2> result;
public:
    void reset() override {
        result = std::make_shared<Product2>();
    }
    void buildStep1() override {
        result->walls = 1;
    }

    void buildStep2() override {
        result->color = "brown";
    }

    void buildStep3() override {
        result->height = 4;
    }

    std::shared_ptr<Product2> getResult(){
        return result;
    }
};

int main() {
    std::shared_ptr<ConcreteBuilder1> cb1 = std::make_shared<ConcreteBuilder1>();
    Director d{cb1};
    d.make("simple");

    auto product = cb1->getResult();
    std::cout << product->toString() << std::endl;
}