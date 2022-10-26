#pragma once
#include <cstring>
#include <iostream>

class my_string{
    private:
    char *str;

    public:
    my_string();
    my_string(const char *s);
    my_string(const my_string &to_copy);    // Copy constructor
    ~my_string(){
        delete str;
    }

    void display() const;
    int length() const;
    const char *c_str() const;

    // Friends
    friend std::ostream &operator<<(std::ostream &os, const my_string &ms){
        os << ms.str;
        return os;
    }
};

int my_string::length() const {
    return strlen(str);
}

my_string::my_string() : str{nullptr}{
    str = new char[1];
    str[0] = 0;   // Utilizzo la terminazione
}

my_string::my_string(const char *s){    
    unsigned long len{strlen(s)};
    str = new char[len+1];

    if(s != nullptr)
        strcpy(str, s);
    else
        str[0] = 0;
}

my_string::my_string(const my_string &to_copy) : my_string(to_copy.str){

}

const char *my_string::c_str()const {
    return str;    
}

