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
    ~my_string();

    void display() const;
    int length() const;
    const char *c_str() const;
};


my_string::my_string() : str{nullptr}{
    str = new char[1];
    *str = 0;   // Utilizzo la terminazione
}

my_string::my_string(const char *s){    
}