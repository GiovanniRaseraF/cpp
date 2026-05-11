#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <typeinfo>
#include <thread>
#include <chrono>

class AbstractAlgo {
public:
    virtual int solve(int a, int b) = 0;
};

class ConcreteAlgo : public AbstractAlgo {
public:
    virtual int solve(int a, int b) override {
        return a * b;
    }
};

class ConcreteAlgo2 : public AbstractAlgo {
public:
    virtual int solve(int a, int b) override {
        return a + b;
    }
};


class Strategy{
    std::shared_ptr<AbstractAlgo> algo;
public:
    Strategy(std::shared_ptr<AbstractAlgo> _algo) : algo{_algo} {}
    int calculate(int a, int b){
        return algo->solve(a, b);
    }
};

int main(){
    std::shared_ptr<AbstractAlgo> mult = std::make_shared<ConcreteAlgo>();
    std::shared_ptr<AbstractAlgo> sum = std::make_shared<ConcreteAlgo2>();

    Strategy strat_mult{mult};
    Strategy strat_sum{sum};

    std::cout << "mult: " << strat_mult.calculate(5, 3) << std::endl;
    std::cout << "sum: " << strat_sum.calculate(5, 3) << std::endl;
}