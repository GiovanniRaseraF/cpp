#pragma once
#include <cstring>
#include <iostream>

class my_str{
    private:
    char *str;

    public:
    my_str() : str{nullptr}{
        str = new char[1];
        str[0] = 0;
    }

    my_str(const char *s) : str{nullptr}{
        if(s != nullptr){
            auto len = std::strlen(s);

            str = new char[len+1];
            std::strcpy(str, s);
        }else{
            str = new char[1];
            str[0] = 0;
        }
    }

    my_str(const my_str &to_copy) : my_str{to_copy.str}{}

    my_str(my_str &&to_move) : str{nullptr} {
        str = to_move.str;
        to_move.str = nullptr;
    }

    ~my_str(){
        delete str;
        str = nullptr;
    }

    size_t length() const {
        return std::strlen(str);
    }

    // Operators
    friend std::ostream &operator<<(std::ostream &os, const my_str &s){
        os << s.str;

        return os;
    }

    // Classic operators
    my_str &operator=(const my_str &to_copy){
        if(this == &to_copy) return *this;

        auto len = std::strlen(to_copy.str);
        delete str;
        str = new char[len + 1];

        std::strcpy(str, to_copy.str);
        return *this;
    }

    my_str &operator=(my_str &&to_move){
        if(this == &to_move) return *this;
        
        delete str;
        str = to_move.str;
        to_move.str = nullptr;

        return *this;
    }

    // Operatori +, - unario, *, 
    friend my_str operator+(const my_str &l, const my_str &r){
        auto l_len = std::strlen(l.str);
        auto r_len = std::strlen(r.str);

        char *buff = new char[l_len + r_len + 1];

        std::strcpy(buff, l.str);
        std::strcat(buff, r.str);

        my_str temp{buff};
        delete buff;

        return temp;
    } 

    friend my_str operator-(const my_str &s){
        auto s_len = std::strlen(s.str);

        char *buff = new char[s_len + 1];

        for(size_t i = 0; i < s_len; i++)
            buff[i] = std::tolower(s.str[i]);
        buff[s_len] = 0;
         
        my_str temp{buff};
        delete buff;

        return temp;
    }

    friend my_str operator*(const my_str &s, const int val){
        auto s_len = s.length();

        auto buff_len = s_len * val + 1;

        char *buff = new char[buff_len];
        buff[0] = 0;

        for(int i = 0; i < val; i++)
            std::strcat(buff, s.str);
        
        my_str temp{buff};
        delete buff;

        return temp;
    }

    // Operatori di  ++, ++ pre
    friend my_str operator++(my_str &s, int){
        my_str ret = s;
        
        auto s_len = std::strlen(s.str);

        for(size_t i = 0; i < s_len; i++)
            s.str[i] = std::toupper(s.str[i]);

        return ret;
    }


    friend my_str &operator++(my_str &s){
        auto s_len = s.length();

        for(size_t i = 0; i < s_len; i++)
            s.str[i] = std::toupper(s.str[i]);

        return s;
    }

    // Operator *=, +=
};