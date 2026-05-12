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
#include <boost/signals2/signal.hpp>

using namespace std::chrono_literals;

class A;
class B;
class C;

class Visitor {
public:
    virtual void visit(const A &a) = 0;
    virtual void visit(const B &b) = 0;
    virtual void visit(const C &c) = 0;
};

class Visitable {
public:
    virtual void accept(std::shared_ptr<Visitor> v) = 0;
};

class A : public Visitable {
public:
    int value = 10;
    std::string name = "A";
    void accept(std::shared_ptr<Visitor> v) override {
        v->visit(*this);
    }
};

class B : public Visitable {
public:
    int value = 1;
    void accept(std::shared_ptr<Visitor> v) override {
        v->visit(*this);
    }
};

class C : public Visitable {
public:
    int value = 12;
    void accept(std::shared_ptr<Visitor> v) override {
        // dont accept !!
    }
};

// Now we need to specify the implementation of the visitor
class AreaVisitor : public Visitor {
public:
    void visit(const A &a) override {
        std::cout << a.name << a.value << std::endl;
    }

    void visit(const B &b) override {
        std::cout << "Visiting b: ";
        std::cout << b.value << std::endl;
    }

    void visit(const C &c) override {

    }
};

class StringNotifierVisitor : public Visitor {
public:
    boost::signals2::signal<void(std::string)> sig;
    void visit(const A &a) override {
        sig(a.name);
    }

    void visit(const B &b) override {
        sig("b");
    }

    void visit(const C &c) override {
        sig("c");
    }
};

void value(std::string *ret, std::string s) {
    *ret = s;
}

int main(){
    auto area_visitor = std::make_shared<AreaVisitor>();
    auto a = std::make_shared<A>();
    auto b = std::make_shared<B>();
    auto c = std::make_shared<C>();

    a->accept(area_visitor);
    b->accept(area_visitor);
    c->accept(area_visitor);

    auto string_notif_visitor = std::make_shared<StringNotifierVisitor>();

    std::string ret;
    auto foo_with_p = std::bind_front(value, &ret);
    string_notif_visitor->sig.connect(foo_with_p);
    
    a->accept(string_notif_visitor);
    
    std::cout << "\n\nRet: " << ret; 
}