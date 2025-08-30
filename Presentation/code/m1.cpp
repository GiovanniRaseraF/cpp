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
float e_distance(Point p1, Point p2){
    float x_diff = p1.x - p2.x;
    float y_diff = p1.y - p2.y;

    float mid = std::pow(x_diff, 2) + std::pow(y_diff, 2);

    return std::sqrt(mid);
}

// this will return the closest point
// you need at least one element int the vector !
// N the number of points
// Th(N)
Point closest(Point p, const std::vector<Point> &points){
    float min_dist = e_distance(p, points[0]);
    Point min = points[0];

    // simple min search
    for(auto other : points){
        if(e_distance(p, other) < min_dist){
            min_dist = e_distance(p, other);
            min = other;
        }
    }

    return min;
}

void load_data(std::ifstream &input, std::vector<Point>& to_load){
    std::string line;
    double x, y; 
    char skip;

    // loading data
    while(std::getline(input, line)){
        std::stringstream ss{line}; 

        ss >> x >> skip >> y;
        Point p = Point(x, y);

        to_load.push_back(p);
        //print_point(query[0]);
    }
}

void print_point(Point p){
    std::cout << p.x << " , " << p.y << std::endl;
}

// M number of point in query
// N number of points in data
// Th(M * N)
int main(int argc, char ** argv){
    // input
    auto query_filename = std::string(argv[1]);
    auto data_filename = std::string(argv[2]);

    std::ifstream query_file{query_filename};
    std::ifstream data_file{data_filename};
    
    // structures
    std::vector<Point> query;
    std::vector<Point> data;

    // loading
    load_data(query_file, query);
    load_data(data_file, data);

    // calc
    for(auto p : query){
        auto cl = closest(p, data);
        print_point(cl);
    }

    // outputs
}