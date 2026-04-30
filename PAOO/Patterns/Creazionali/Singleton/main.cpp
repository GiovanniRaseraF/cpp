#include <iostream>
#include <string>
#include <filesystem>
#include <optional>
#include <memory>
#include <fmt/core.h>
#include <thread>
#include <chrono>
#include <iomanip>

class PrinterDriver {
public:
    static std::shared_ptr<PrinterDriver> instance;

    PrinterDriver() {
        std::cout << "Created new instance" << std::endl;
    }

    PrinterDriver(PrinterDriver &) = delete;
    PrinterDriver(PrinterDriver &&) = delete;
    void operator=(const PrinterDriver &) = delete;

    static std::shared_ptr<PrinterDriver> getInstance(){
        if(PrinterDriver::instance == nullptr){
            instance = std::make_shared<PrinterDriver>();
        }
        return instance;
    }
};
// This is necessary 
std::shared_ptr<PrinterDriver> PrinterDriver::instance = nullptr;


int main(){
    std::shared_ptr<PrinterDriver> p = PrinterDriver::getInstance();
    std::shared_ptr<PrinterDriver> p2 = PrinterDriver::getInstance();

    std::cout << std::hex << p.get() << std::endl;
    std::cout << std::hex << p2.get() << std::endl;
}