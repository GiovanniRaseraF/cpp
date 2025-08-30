#include <iostream>
#include <string>
#include <fstream>
#include <vector>
#include <sstream>
#include <cmath>

struct Point{
    double x;
    double y;
    Point(double _x, double _y) : x{_x}, y{_y}{}
};

// sqrt((p1.x - p2.x)^2 + (p1.y - p2.y)^2)
float distanceCorrect(Point p1, Point p2){
    float x_diff = p1.x - p2.x;
    float y_diff = p1.y - p2.y;

    float mid = std::pow(x_diff, 2) + std::pow(y_diff, 2);

    return std::sqrt(mid);
}

// sqrt((p1.x - p2.x)^2 + (p1.y - p2.y)^2)
float distance(Point p1, Point p2){
    float x_diff = p1.x - p2.x;
    float y_diff = p1.y - p2.y;

    float mid = std::pow(x_diff, 2) - std::pow(y_diff, 2);

    return std::pow(mid, 2);
}

