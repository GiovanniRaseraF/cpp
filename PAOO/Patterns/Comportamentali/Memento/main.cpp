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

using namespace std::chrono_literals;

class CounterState {
public:
    int value;
    CounterState(int v) : value{v} {}
};

class Memento {};

class CounterMemento : public Memento {
private:
    CounterState state;
public:
    CounterMemento(CounterState _state) : state{_state} {}
    CounterState getState(){
        return state;
    }
};

class Counter {
    CounterState state;
public:
    Counter(int value) : state{CounterState(value)} {}

    CounterMemento save(){
        return CounterMemento(state);
    }

    void setState(CounterMemento mem) {
        state = mem.getState();
    }

    void addOne(){
        this->state.value++;
    }

    std::string toString(){
        std::string ret;
        ret += "Counter: " + std::to_string(state.value);
        return ret;
    }
};

class HistoryHandler {
    std::stack<CounterMemento> history;
    std::shared_ptr<Counter> initiator;
public:
    HistoryHandler(std::shared_ptr<Counter> i) : initiator{i} {
        save();
    }

    void undo(){
        if(history.empty()) return;

        auto last_memento = history.top();
        history.pop();

        initiator->setState(last_memento);
    }

    void save() {
        auto new_memento = initiator->save();
        history.push(new_memento);
    }
};


int main(){
    auto c = std::make_shared<Counter>(0);
    HistoryHandler hh{c};

    std::string input;
    while(true){
        std::cout << "Command>>"; std::cin >> input;

        if (input == "i") {
            c->addOne();
        }

        if (input == "s") {
            hh.save();
        }

        if (input == "u") {
            hh.undo();
        }

        if (input == "q") {
            break;
        }

        std::cout << c->toString() << std::endl;
    }

}