#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <typeinfo>
#include <thread>
#include <list>
#include <mutex>
#include <chrono>
#include <future>
#include <functional>

using namespace std::chrono_literals;

class GenericHandler {
public:
    std::shared_ptr<GenericHandler> next;

    virtual void handleRequest(int value) {
        std::cout << "Impossible to handle request" << std::endl;
    }
};

class ConcreteHandler1 : public GenericHandler {
public:
    ConcreteHandler1(){
        next = std::make_shared<GenericHandler>();
    }
    ConcreteHandler1(std::shared_ptr<GenericHandler> h) {
        next = h;
    }

    virtual void handleRequest(int value) {
        if (value < 10){
            std::cout << "[1]Handling: " << value << std::endl;
        }else{
            next->handleRequest(value);
        }
    }
};

class ConcreteHandler2 : public GenericHandler {
public:
    ConcreteHandler2(){
        next = std::make_shared<GenericHandler>();
    }
    ConcreteHandler2(std::shared_ptr<GenericHandler> h) {
        next = h;
    }
    virtual void handleRequest(int value) {
        if (value >= 10 && value < 15){
            std::cout << "[2]Handling: " << value << std::endl;
        }else{
            next->handleRequest(value);
        }
    }
};

int main(){
    auto g1 = std::make_shared<ConcreteHandler1>(std::make_shared<ConcreteHandler2>());

    for(int i = 0; i < 20; i++){
        g1->handleRequest(i);
    }
}