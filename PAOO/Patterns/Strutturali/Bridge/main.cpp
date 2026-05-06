#include <iostream>
#include <string>
#include <memory>
// The purpose of the bridge to to allow the front-end and the back-end to
// change independently.

// Back-end concred implementation
class ConcreteDrowingProgram1{
public:
    void dLine(std::string data) {
        std::cout << "+ ConcreteDrowingProgram1 Line: " << data << std::endl;
    }
    void dPoint(std::string data) {
        std::cout << "+ ConcreteDrowingProgram1 Point: " << data << std::endl;
    }
    void dCircle(std::string data) {
        std::cout << "+ ConcreteDrowingProgram1 Circle: " << data << std::endl;
    }
};

class ConcreteDrowingProgram2{
public:
    void draw_Line(std::string data) {
        std::cout << "| ConcreteDrowingProgram2 Line: " << data << std::endl;
    }
    void draw_Point(std::string data) {
        std::cout << "| ConcreteDrowingProgram2 Point: " << data << std::endl;
    }
    void draw_Circle(std::string data) {
        std::cout << "| ConcreteDrowingProgram2 Circle: " << data << std::endl;
    }
};

// Back-end interface (like a driver)
class DrowingProgram {
public:
    virtual void drawLine(std::string data) = 0;
    virtual void drawPoint(std::string data) = 0;
    virtual void drawCircle(std::string data) = 0;
};

class DrowingProgram1 : public DrowingProgram {
public:
    std::shared_ptr<ConcreteDrowingProgram1> concrete_program;
    DrowingProgram1() {
        concrete_program = std::make_shared<ConcreteDrowingProgram1>();
    }
    void drawLine(std::string data) {
        concrete_program->dLine(data);
    }
    void drawPoint(std::string data) {
        concrete_program->dPoint(data);
    }
    void drawCircle(std::string data) {
        concrete_program->dCircle(data);
    }
};

class DrowingProgram2 : public DrowingProgram {
public:
    std::shared_ptr<ConcreteDrowingProgram2> concrete_program;
    DrowingProgram2() {
        concrete_program = std::make_shared<ConcreteDrowingProgram2>();
    }
    void drawLine(std::string data) {
        concrete_program->draw_Line(data);
    }
    void drawPoint(std::string data) {
        concrete_program->draw_Point(data);
    }
    void drawCircle(std::string data) {
        concrete_program->draw_Circle(data);
    }
};

// Front-end implementation
class Figure {
public:
    std::shared_ptr<DrowingProgram> drowing_program;
    Figure(std::shared_ptr<DrowingProgram> _drowing_program) {
        drowing_program = _drowing_program;
    }
    virtual void draw() = 0;
};

class Circle : public Figure {
public:
    Circle(std::shared_ptr<DrowingProgram> _drowing_program) : Figure(_drowing_program){}   
    void draw() override {
        drowing_program->drawCircle("Circle");
    }
};

class Rectangle : public Figure {
public:
    Rectangle(std::shared_ptr<DrowingProgram> _drowing_program) : Figure(_drowing_program){}   
    void draw() override {
        drowing_program->drawLine("Rectangle 1");
        drowing_program->drawLine("Rectangle 2");
        drowing_program->drawLine("Rectangle 3");
        drowing_program->drawLine("Rectangle 4");
    }
};

int main(){
    std::shared_ptr<DrowingProgram> drowing_program1 = std::make_shared<DrowingProgram1>();
    std::shared_ptr<DrowingProgram> drowing_program2 = std::make_shared<DrowingProgram2>();

    std::shared_ptr<Figure> circle = std::make_shared<Circle>(drowing_program1);
    std::shared_ptr<Figure> circle2 = std::make_shared<Circle>(drowing_program2);
    std::shared_ptr<Figure> rectangle = std::make_shared<Rectangle>(drowing_program1);
    std::shared_ptr<Figure> rectangl2 = std::make_shared<Rectangle>(drowing_program2);

    circle->draw();
    rectangle->draw();

    std::cout << std::endl;

    circle2->draw();
    rectangl2->draw();

    return 0;
}
