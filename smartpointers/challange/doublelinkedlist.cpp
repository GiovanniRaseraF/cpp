#include <memory>
#include <iostream>
#include <string>
#include <list>
#include <vector>

class node{
    public:
    double data;
    std::shared_ptr<node> next;
    std::shared_ptr<node> prev;

    node(double d) : data{d}{}

    void push_next(node &n){
        n.next = next;
        n.prev = std::make_shared<node>(*this);
        next = std::make_shared<node>(n);
    }

    void print(){
        std::cout << "data: " << data << ", next: " << next.get() << ", prev: " << prev.get() << std::endl;
    }    
};


class linked{
    public:
    double data;
    std::weak_ptr<linked> next;

    linked(double d) : data{d}, next{}{}

    void setnext(double d){
        next = std::make_shared<linked>(d);
    }

    ~linked(){
        std::cout << "Del: " << data << std::endl;
    }

    static std::weak_ptr<linked> getlast(linked &l){
        std::weak_ptr<linked> ret = std::make_shared<linked>(l);
        
        return ret;
    }
};

int main(){
    linked l{10};
    l.setnext(200);
    auto last = linked::getlast(l);

    //last->setnext(200);
    
}