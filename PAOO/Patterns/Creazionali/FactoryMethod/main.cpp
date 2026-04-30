#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <fmt/core.h>
#include <thread>
#include <chrono>

using namespace std::chrono_literals;

class BackendPlusOperation {
public:
    virtual int plus(int a, int b) = 0;
};

class BackendMinusOperation {
public:
    virtual int minus(int a, int b) = 0;
};

class BackendMultOperation {
public:
    virtual int mult(int a, int b) = 0;
};

// Linux
class BackendPlusOperationLinux : public BackendPlusOperation {
public:
    int plus(int a, int b) override {
        std::cout << "Linux.plus()" << std::endl;
        return a + b;
    }
};

class BackendMinusOperationLinux : public BackendMinusOperation {
public:
    int minus(int a, int b) override {
        std::cout << "Linux.minus()" << std::endl;
        return a - b;
    }
};

class BackendMultOperationLinux : public BackendMultOperation {
public:
    int mult(int a, int b) override {
        std::cout << "Linux.mult()" << std::endl;
        return a * b;
    }
};

// Windows
class BackendPlusOperationWindows : public BackendPlusOperation {
public:
    int plus(int a, int b) override {
        std::cout << "Windows.plus()" << std::endl;
        return a + b;
    }
}; 

class BackendMinusOperationWindows : public BackendMinusOperation {
public:
    int minus(int a, int b) override {
        std::cout << "Windows.minus()" << std::endl;
        return a - b;
    }
};

class BackendMultOperationWindows : public BackendMultOperation {
public:
    int mult(int a, int b) override {
        std::cout << "Windows.mult()" << std::endl;
        return a * b;
    }
};

// Execution
class Executor {
public:
    virtual std::shared_ptr<BackendPlusOperation> create_plus() = 0;
    virtual std::shared_ptr<BackendMinusOperation> create_minus() = 0;
    virtual std::shared_ptr<BackendMultOperation> create_mult() = 0;

    int plus(int a, int b) {
        return create_plus()->plus(a, b);
    }

    int minus(int a, int b) {
        return create_minus()->minus(a, b);
    }

    int mult(int a, int b) {
        return create_mult()->mult(a, b);
    };
};

class ExecutorLinux : public Executor {
public:
    std::shared_ptr<BackendPlusOperation> create_plus() override {
        return std::make_shared<BackendPlusOperationLinux>();
    }
    std::shared_ptr<BackendMinusOperation> create_minus() override {
        return std::make_shared<BackendMinusOperationLinux>();
    }
    std::shared_ptr<BackendMultOperation> create_mult() override {
        return std::make_shared<BackendMultOperationLinux>();
    }
};

class ExecutorWindows : public Executor {
public:
    std::shared_ptr<BackendPlusOperation> create_plus() override {
        return std::make_shared<BackendPlusOperationWindows>();
    }
    std::shared_ptr<BackendMinusOperation> create_minus() override {
        return std::make_shared<BackendMinusOperationWindows>();
    }
    std::shared_ptr<BackendMultOperation> create_mult() override {
        return std::make_shared<BackendMultOperationWindows>();
    }
};

int main(){
    auto executor_linux = std::make_shared<ExecutorLinux>();
    auto executor_windows = std::make_shared<ExecutorWindows>();

    std::cout << "Linux" << std::endl;
    std::cout << executor_linux->plus(1, 2) << std::endl;
    std::cout << executor_linux->minus(1, 2) << std::endl;
    std::cout << executor_linux->mult(1, 2) << std::endl;

    std::cout << "Windows" << std::endl; 
    std::cout << executor_windows->plus(1, 2) << std::endl;
    std::cout << executor_windows->minus(1, 2) << std::endl;
    std::cout << executor_windows->mult(1, 2) << std::endl;

    // Real interesting part
    while(true){
        std::cout << std::endl << std::endl;

        std::shared_ptr<Executor> executor{};

        std::cout << "What platforma are you using ?" << std::endl;
        std::string platform;
        std::cin >> platform;

        if (platform == "linux") {
            executor = std::make_shared<ExecutorLinux>();
        } else if (platform == "windows") {
            executor = std::make_shared<ExecutorWindows>();
        } else {
            std::cout << "Quitting" << std::endl;
            return 0;
        }
        std::cout << executor->plus(1, 2) << std::endl;
        std::cout << executor->minus(1, 2) << std::endl;
        std::cout << executor->mult(1, 2) << std::endl;
    }
}
