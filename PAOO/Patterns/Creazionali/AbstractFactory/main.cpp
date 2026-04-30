#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <fmt/core.h>
#include <thread>
#include <chrono>

using namespace std::chrono_literals;

// Framework section
class OptionClassInterface {
public:
    virtual void operation() = 0;
};

class FactoryInterface {
public:
    virtual std::unique_ptr<OptionClassInterface> create() = 0;
};

class Operator {
public:
    void action(std::shared_ptr<FactoryInterface> factory){
        std::shared_ptr<OptionClassInterface> option = factory->create();
        option->operation();
    }
};

// Application Section
class PrintOption : public OptionClassInterface {
public:
    std::string what;
    PrintOption(std::string _what) : what{_what} {}
    void operation() override {
        std::cout << what << std::endl;
    }
};

class PrintOptionFactory : public FactoryInterface {
public:
    std::string what;
    PrintOptionFactory(std::string _what) : what{_what} {}
    std::unique_ptr<OptionClassInterface> create() override {
        return std::make_unique<PrintOption>(what);
    }
};


// Client section
int main(){
   // Framework Section 
    Operator operator1{};
    Operator operator2{};

    // Application Section
    auto print_option_factory_hello = std::make_shared<PrintOptionFactory>("Hello World");
    auto print_option_factory_come = std::make_shared<PrintOptionFactory>("Come Stai ?");

    // Send to framework
    operator1.action(print_option_factory_hello);
    operator1.action(print_option_factory_come);
}
