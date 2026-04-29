#include <iostream>
#include <string>
#include <memory>
#include <vector>
#include <fmt/core.h>
// The idea of the composite pattern to to allow a client to treat a single
// element or a list of elements in the same way ???... MM no sure

class Composable {
public:
    virtual void add(std::shared_ptr<Composable> element) = 0;
    virtual void remove() = 0;
    virtual void operation(int level) = 0;
};

class Element : public Composable {
public: 
    void add(std::shared_ptr<Composable> element) override {}
    void remove() override {}
    void operation(int level) override {}
};

class Leaf : public Element {
public:
    void operation(int level) override {
        for (int i = 0; i < level; i++){
            std::cout << "\t";
        }
        std::cout << "Leaf";
    }
};

class Composite : public Composable {
public:
    std::string name = "Composite";
    std::vector<std::shared_ptr<Composable>> elements;
    void add(std::shared_ptr<Composable> element) override {
        elements.push_back(element);
    }
    void remove() override {
        elements.pop_back();
    }
    void operation(int level) override {
        for (int i = 0; i < level; i++){
            std::cout << "\t";
        }
        std::cout << name;
        std::cout << std::endl;
        for(auto e : elements){
            e->operation(level+1);
            std::cout << std::endl;
        }
    }
};

class CompositeNode : public Composite {
public:
    CompositeNode() {
        name = "CompositeNode";
    }
};

int main(){

    std::shared_ptr<Composable> n = std::make_shared<CompositeNode>();
    n->add(std::make_shared<Leaf>());
    n->add(std::make_shared<Leaf>());
    n->add(std::make_shared<Leaf>());

    std::shared_ptr<Composable> n2 = std::make_shared<CompositeNode>();
    n2->add(std::make_shared<Leaf>());
    n2->add(std::make_shared<Leaf>());
    n2->add(std::make_shared<Leaf>());

    n->add(n2);

    // This leads to infinite loops !!!
    //n2->add(n);
    // We can try to prevent this by checking on add(..)
    // Also ownership is a problem here..
    // Who owns n2 ??
    
    n->operation(0);
}