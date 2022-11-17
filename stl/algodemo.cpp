#include <iostream>
#include <vector>
#include <list>
#include <algorithm>
#include <cctype>
#include <string>

class person{
    public:
    std::string name;
    int age;
    person(std::string n, int a) : name{n}, age{a} {}

    bool operator==(const person &other) const {
        return age == other.age && name == other.name;
    }

    bool operator<(const person &other) const {
        return age < other.age;
    }

    friend std::ostream &operator<<(std::ostream &os, const person &p){
        os << "name: " << p.name << ", age: " << p.age;

        return os;
    }
};


int main(){
    std::list<person> prs{};
    prs.push_back(person{"hello", 10});
    prs.push_back(person{"giovani", 12});
    prs.push_back(person{"federico", 100});

    int n = std::count(prs.begin(), prs.end(), person{"hello", 10});

    for(const auto &p : prs){
        std::cout << p << std::endl;
    }

    std::cout << "n: " << n << std::endl;

    std::replace(prs.begin(), prs.end(), person{"hello", 10}, person{"bella", 234});

    for(const auto &p : prs){
        std::cout << p << std::endl;
    }

    std::string s1 = "Hello";
    std::string s2;
    std::cout << "Prima di trasform: " << s1 << std::endl;

    std::transform(s1.begin(), s1.end(),s1.begin(), ::toupper);
    std::cout << "Dopo di trasform: " << s1 << std::endl;


    
}

