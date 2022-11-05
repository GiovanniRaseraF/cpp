#include <iostream>
#include <string>
#include <memory>
#include <vector>

class node {
    public:
    double value;
    std::shared_ptr<node> next;

    node(double v) : value{v}, next{}{
        std::cout << "-node(double): " << value << std::endl;
    }

    void setNext(std::shared_ptr<node> n){
        next = n;
    }

    ~node(){
    }
};

class linked{
    public:
    std::shared_ptr<node> head;

    linked(double first) : head{std::make_shared<node>(first)}{}

    void pushBack(double value){
        std::shared_ptr<node> index = head;
        
        while(index->next.get() != nullptr){
            index = index->next;
        }

        index->setNext(std::make_shared<node>(value));
    }

    void print(){
        std::shared_ptr<node> index = head;

       std::cout << std::endl << "list: "; 
        while(index.get() != nullptr){
            std::cout << " " << index->value;
            index = index->next;
        }
        std::cout << std::endl;
    }
    
};

int main(){
    linked l{10};
    l.pushBack(200);
    l.pushBack(3000);
    l.pushBack(4000);

    for(int i = 0; i < 300; i++){
        l.pushBack(i);
    }

    l.print();

    return 0;    
}