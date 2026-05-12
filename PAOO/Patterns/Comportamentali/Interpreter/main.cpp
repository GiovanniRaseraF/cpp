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

    void set(std::string varname, float value){
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

class Constant : public Terminal {
public:
    Constant (float v) : value{v} {}
    float value;
    float evaluate(Context c) override {
        return value;
    }
};

class NonTerminal : public Expression {
public:
    virtual float evaluate(Context c) = 0;
};

class Sum : public NonTerminal {
public:
    Sum(
        std::shared_ptr<Expression> l, 
        std::shared_ptr<Expression> r) : left{l}, right{r} {}
    std::shared_ptr<Expression> left; 
    std::shared_ptr<Expression> right; 
    float evaluate(Context c) override {
        float result_left = left->evaluate(c);
        float result_right = right->evaluate(c);

        return result_left + result_right;
    }
};

class Sub: public NonTerminal {
public:
    Sub(
        std::shared_ptr<Expression> l, 
        std::shared_ptr<Expression> r) : left{l}, right{r} {}
    std::shared_ptr<Expression> left; 
    std::shared_ptr<Expression> right; 
    float evaluate(Context c) override {
        float result_left = left->evaluate(c);
        float result_right = right->evaluate(c);

        return result_left - result_right;
    }
};

class Mul: public NonTerminal {
public:
    Mul(
        std::shared_ptr<Expression> l, 
        std::shared_ptr<Expression> r) : left{l}, right{r} {}
    std::shared_ptr<Expression> left; 
    std::shared_ptr<Expression> right; 
    float evaluate(Context c) override {
        float result_left = left->evaluate(c);
        float result_right = right->evaluate(c);

        return result_left * result_right;
    }
};

class Div: public NonTerminal {
public:
    Div(
        std::shared_ptr<Expression> l, 
        std::shared_ptr<Expression> r) : left{l}, right{r} {}
    std::shared_ptr<Expression> left; 
    std::shared_ptr<Expression> right; 
    float evaluate(Context c) override {
        float result_left = left->evaluate(c);
        float result_right = right->evaluate(c);

        return result_left / result_right;
    }
};

class Brackets: public NonTerminal {
public:
    Brackets(
        std::shared_ptr<Expression> i) : inner{i} {}
    std::shared_ptr<Expression> inner; 
    float evaluate(Context c) override {
        return inner->evaluate(c);
    }
};

int main(){
    Context c{};
    c.set("ciao", 10);

    Variable v_ciao{"ciao"};
    std::cout << v_ciao.evaluate(c) << std::endl;

    Constant con{11.3};
    std::cout << con.evaluate(c) << std::endl;

    // Lets create an expression

    // (ciao + 11 - melanzane) * (11 * cavoli / (33 * frittelle)) + (2 * (3 * ciaone));
    // Expression: (ciao + 11 - melanzane) * (11 * cavoli / (33 * frittelle)) + (2 * (3 * ciaone));

    // 1. (ciao + 11 - melanzane)
    auto part1 = std::make_shared<Brackets>(
        std::make_shared<Sub>(
            std::make_shared<Sum>(
                std::make_shared<Variable>("ciao"),
                std::make_shared<Constant>(11.0f)
            ),
            std::make_shared<Variable>("melanzane")
        )
    );

    // 2. (11 * cavoli / (33 * frittelle))
    auto part2 = std::make_shared<Brackets>(
        std::make_shared<Div>(
            std::make_shared<Mul>(
                std::make_shared<Constant>(11.0f),
                std::make_shared<Variable>("cavoli")
            ),
            std::make_shared<Brackets>(
                std::make_shared<Mul>(
                    std::make_shared<Constant>(33.0f),
                    std::make_shared<Variable>("frittelle")
                )
            )
        )
    );

    // 3. (2 * (3 * ciaone))
    auto part3 = std::make_shared<Brackets>(
        std::make_shared<Mul>(
            std::make_shared<Constant>(2.0f),
            std::make_shared<Brackets>(
                std::make_shared<Mul>(
                    std::make_shared<Constant>(3.0f),
                    std::make_shared<Variable>("ciaone")
                )
            )
        )
    );

    // Final Assembly: (Part1 * Part2) + Part3
    auto full_expression = std::make_shared<Sum>(
        std::make_shared<Mul>(part1, part2),
        part3
    );

    // Evaluation
    c.set("ciao", 10.0f);
    c.set("melanzane", 5.0f);
    c.set("cavoli", 2.0f);
    c.set("frittelle", 1.0f);
    c.set("ciaone", 4.0f);

    float result = full_expression->evaluate(c);
    std::cout << "The result of the expression is: " << result << std::endl;

    Context c2;
    c2.set("ciao", 11.0f);
    c2.set("melanzane", 52.0f);
    c2.set("cavoli", 5.0f);
    c2.set("frittelle", 5.0f);
    c2.set("ciaone", 2.0f);
    float result_c2 = full_expression->evaluate(c2);
    std::cout << "The result of the expression is: " << result_c2 << std::endl;
}