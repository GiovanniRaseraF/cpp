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

class AbstractCommand {
public:
    virtual void execute() = 0;
};

class Invoker {
public:
    std::list<std::shared_ptr<AbstractCommand>> commands;
    std::mutex mutex;
    std::future<void> runner;
    std::atomic<bool> can_run{true};

    Invoker() {}
    void run(){
        can_run = true;
        runner = std::async(std::launch::async, &Invoker::fetchCommands, this);
    }

    void fetchCommands(){
        while(can_run){
            std::shared_ptr<AbstractCommand> to_execute;
            {
                std::lock_guard<std::mutex> lg{mutex};
                if(!commands.empty()){
                    to_execute = commands.front();
                    commands.pop_front();
                    to_execute->execute();
                }
            }
            std::this_thread::sleep_for(500ms);
        }
    }

    void add_command(std::shared_ptr<AbstractCommand> c){
        std::lock_guard<std::mutex> lg{mutex};
        this->commands.push_back(c);
    }

    ~Invoker() {
        can_run = false;
        runner.wait_for(1s);
    }
};

class Listener {
public:
    void action(int value) {
        std::cout << "Listened: " << value << std::endl;
    }
};

class ConcreteCommand : public AbstractCommand {
    std::shared_ptr<Listener> listener;
    int value;
public:
    ConcreteCommand(int v, std::shared_ptr<Listener> l) {
        value = v;
        listener = l;
    }
    void execute() {
        listener->action(value);
    }
};

int main(){
    Invoker inv{};

    inv.run();

    auto listener = std::make_shared<Listener>();
    int value;
    while(true){
        std::cin >> value;

        if(value < 0){
            break;
        }

        inv.add_command(std::make_shared<ConcreteCommand>(value, listener));
    }
}