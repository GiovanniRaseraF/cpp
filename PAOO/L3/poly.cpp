// Author: Giovanni Rasera
#include <iostream>
#include <string>
#include <memory>  // Yess C++ we love you <3
#include <vector>
#include <array>

// Wrong Poly
class PointW{
    private:
    float _x;
    float _y;
    public:   
    PointW(float x, float y):  _x{x}, _y{y}{ }

    void draw() {
        std::cout << "PointW(" << _x << "," << " " << _y << ")"<< std::endl;
    }
};

class LineW {
    private:
    PointW _p1;
    PointW _p2;

    public:   
    LineW(PointW p1, PointW p2):  _p1{p1}, _p2{p2}{ }

    void draw() {
        std::cout << "LineW is made of: " << std::endl;
        std::cout << "\tp1: "; _p1.draw();
        std::cout << "\tp2: "; _p2.draw();
    }
};

class CircleW {
    private:
    PointW _p1;
    float _r;

    public:   
    CircleW(PointW p1, float r):  _p1{p1}, _r{r}{ }

    void draw() {
        std::cout << "CircleW is made of: " << std::endl;
        std::cout << "\tp1: "; _p1.draw();
        std::cout << "\tr: " << _r << std::endl;
    }
};

// Good Poly
class Figure {
    public:   
    virtual void draw() {
        std::cout << "Figure" << std::endl;
    }
};

class Point: public Figure{
    private:
    float _x;
    float _y;
    public:   
    Point(float x, float y):  _x{x}, _y{y}{ }

    void draw() override {
        std::cout << "Point(" << _x << "," << " " << _y << ")"<< std::endl;
    }
};

class Line : public Figure{
    private:
    Point _p1;
    Point _p2;

    public:   
    Line(Point p1, Point p2):  _p1{p1}, _p2{p2}{ }

    void draw() override {
        std::cout << "Line is made of: " << std::endl;
        std::cout << "\tp1: "; _p1.draw();
        std::cout << "\tp2: "; _p2.draw();
    }
};

class Circle : public Figure{
    private:
    Point _p1;
    float _r;

    public:   
    Circle(Point p1, float r):  _p1{p1}, _r{r}{ }

    void draw() override {
        std::cout << "Circle is made of: " << std::endl;
        std::cout << "\tp1: "; _p1.draw();
        std::cout << "\tr: " << _r << std::endl;
    }
};

int main(){
    std::cout << "Wrong Poly" << std::endl;
    // Wrong
    std::array<std::shared_ptr<CircleW>, 2> cs{};
    std::array<std::shared_ptr<LineW>, 2> ls{};
    std::array<std::shared_ptr<PointW>, 2> ps{};
    
    for(int i = 0; i < cs.size(); i++){
        cs[i] = std::make_shared<CircleW>(PointW(i, i), i);
    }
    for(int i = 0; i < ls.size(); i++){
        ls[i] = std::make_shared<LineW>(PointW(i, i), PointW(i+1, i+1));
    }
    for(int i = 0; i < ps.size(); i++){
        ps[i] = std::make_shared<PointW>(i, i);
    }

    // Here we chose draw method at "compile time"...
    for(auto c : cs){
        c->draw();
    }
    for(auto l : ls){
        l->draw();
    }
    for(auto p : ps){
        p->draw();
    }

    // Good 
    std::cout << std::endl;
    std::cout << "Good Poly" << std::endl;
    std::array<std::shared_ptr<Figure>, 5> fs{};

    for(int i = 0; i < fs.size(); i++){
        if(i % 3 == 0){
            fs[i] = std::make_shared<Circle>(Point(i, i), i);
        }else if(i % 3 == 1){
            fs[i] = std::make_shared<Line>(Point(i, i), Point(i+1, i+1));
        }else{
            fs[i] = std::make_shared<Point>(i, i);
        }
    }

    // Here the method is chosen at run-time
    for(auto f : fs){
        f->draw();
    }
}