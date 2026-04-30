#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <fmt/core.h>
#include <thread>
#include <chrono>
#include <iomanip>

// In c++ we can use the copy constructor

class Cloneable {
public:
    virtual std::shared_ptr<Cloneable> clone() = 0;
    friend std::ostream& operator<<(std::ostream &os, const Product1 &op);
};

class Product1 : public Cloneable {
private:
    int a;
    int b;
    int c;
public:
    Product1(int a, int b, int c) : a{a}, b{b}, c{c} {}
    std::shared_ptr<Cloneable> clone() override {
        return std::make_shared<Product1>(this->a, this->b, this->c);
    }

    friend std::ostream& operator<<(std::ostream &os, const Product1 &op) {
        os << op.a << " " << op.b << " " << op.c;
        return os;
    }
};

class Product2 : public Cloneable {
private:
    int a;
    int b;
public:
    Product2(int a, int b) : a{a}, b{b} {}
    std::shared_ptr<Cloneable> clone() override {
        return std::make_shared<Product2>(this->a, this->b);
    }
    friend std::ostream& operator<<(std::ostream &os, const Product2 &op) {
        os << op.a << " " << op.b;
        return os;  
    }
};

int main(){
    auto product1 = std::make_shared<Product1>(1, 2, 3);
    auto product2 = std::make_shared<Product2>(1, 2);

    auto product1_clone = product1->clone();
    auto product2_clone = product2->clone();

    std::cout << std::hex << product1.get() << std::endl;
    std::cout << std::hex << product1_clone.get() << std::endl;
    std::cout << std::hex << product2.get() << std::endl;
    std::cout << std::hex << product2_clone.get() << std::endl;

    // Values
    std::cout << *product1 << std::endl;
    std::cout << (Product1) (*product1_clone) << std::endl;
    std::cout << *product2 << std::endl;
    std::cout << *product2_clone << std::endl;

}