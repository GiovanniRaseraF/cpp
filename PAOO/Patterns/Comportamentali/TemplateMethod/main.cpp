#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <typeinfo>
#include <thread>
#include <chrono>

class AbstractAlgo {
protected:
    virtual bool less(int a, int b) = 0;
public:
    int min(int a, int b){
        if(less(a, b)){
            return a;
        }
        return b;
    }
};

class ConcreteAlgo : public AbstractAlgo {
protected:
    virtual bool less(int a, int b) override {
        return a < b;
    }
};

class ConcreteAlgo2 : public AbstractAlgo {
protected:
    virtual bool less(int a, int b) override {
        return a > b;
    }
};

int main(){
    std::shared_ptr<AbstractAlgo> min = std::make_shared<ConcreteAlgo>();
    std::shared_ptr<AbstractAlgo> min2 = std::make_shared<ConcreteAlgo2>();

    int m = min->min(4, 2);
    int m2 = min2->min(4, 2);

    std::cout << "m: " << m << std::endl;
    std::cout << "m2: " << m2 << std::endl;
}