#pragma once
#include <string>
#include <iostream>
// Movie
enum ratings{
    G,
    PG, 
    PG13, 
    R,
}; 
typedef enum ratings ratings;

class movie{
    private:
    std::string name;
    ratings rating;
    uint32_t watched;

    public:
    movie(std::string n, ratings r);
    movie(const movie &to_copy);
    movie(movie &&to_move);

    inline std::string get_name() const {
        return name;
    }
    inline ratings get_rating() const {
        return rating;
    }
    inline uint32_t get_watched() const {
        return watched;
    }

    inline movie &watch(){
        watched++;
        return *this;
    }
    inline movie &set_name(std::string new_n) {
        name = new_n;
        return *this;
    }
    inline movie &set_rating(ratings new_r) {
        rating = new_r;
        return *this;
    }

    // Operators
    friend std::ostream &operator<<(std::ostream &os, const movie &m){
        os << "Name:" << m.name << ", R: " << m.rating << ", W: " << m.watched;

        return os;
    }
};