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
#include <map>
#include <functional>

using namespace std::chrono_literals;

class Context {
public:
    std::map<std::string, float> data;
    bool exists(std::string varname) {
        return data.count(varname) > 0;
    }

    float get(std::string varname) {
        if(exists(varname)) {
            return data[varname];
        }else{
            // Not that correct but ok
            return 0;
        }
    }

    float set(std::string varname, float value){
        data[varname] = value;
    }
};

class Expression {
public:
    virtual float evaluate(Context c) = 0;
};

class Terminal : public Expression {
public:
    virtual float evaluate(Context c) = 0;
};

class Variable : public Terminal {
public:
    Variable(std::string n) : name{n} {}
    std::string name;
    float evaluate(Context c) override {
        return c.get(name);
    }
};

class Literal : public Terminal {
public:
    Literal(float v) : value{v} {}
    float value;
    float evaluate(Context c) override {
        return value;
    }
};

int main(){
    
}