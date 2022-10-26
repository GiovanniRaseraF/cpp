#pragma once

#include <iostream>
#include <string>
#include <vector>
#include "movie.hpp"
#include <algorithm>

class movies{
    private:
    std::vector<movie> movie_vec{};

    public:
    movies() = default;
    movies(const movies &to_copy) : movie_vec{to_copy.movie_vec}{}
    movies(movies &&to_move) : movie_vec{std::move(to_move.movie_vec)}{}

    movies &add(std::string name, ratings r);
    movies &watch(std::string name);
    bool is_present(std::string name);
    
    public:
    // Friends
    friend std::ostream &operator<<(std::ostream &os, const movies &m){
        os << "Movies: {" << std::endl;

        std::for_each(begin(m.movie_vec), end(m.movie_vec),
            [&](const movie &elem){
                os << elem << "," << std::endl;   
            }
        );

        os << "}";

        return os;
    }
};