#pragma once
#include <cstring>
#include <iostream>
#include "utils.hpp"

class my_string{
    private:
    char *str;

    public:
    my_string();
    my_string(const char *s);
    my_string(const my_string &to_copy);    // Copy constructor
    my_string(my_string &&to_move);
    ~my_string(){
        delete str;
    }

    void display() const;
    int length() const;
    const char *c_str() const;

    // Frienda
    friend std::ostream &operator<<(std::ostream &os, const my_string &ms){
        os << ms.str;
        return os;
    }

    // Copy operator
    my_string &operator=(const my_string &to_assign){
        PRINTLN("=copy");
        if (this == &to_assign)
            return *this;
        
        delete str;         // Questa riga serve a far si che venga eliminato 
                            // il puntatore nella heap
        str = new char[strlen(to_assign.str) + 1];
        strcpy(str, to_assign.str);

        return *this;
    }

    my_string &operator=(my_string &&to_assignmove){
        PRINTLN("=move");

        if(this == &to_assignmove)
            return *this;
        
        delete str;

        str = to_assignmove.str;//str = new char[strlen(to_assignmove.str)+1];
        //strcpy(str, to_assignmove.str);
        //delete to_assignmove.str;
        to_assignmove.str = nullptr; // importante farlo siccome poi  viene chiamato delete
        // e viene eliminato il puntatore a null
        
        return *this;
    }

    // Qeusto è un operatore unario non è binario
    my_string operator-() const {
        // Devo creare una copia della string interna e poi creare un oggetto da ritornare come copia
        // importate che il metodo sia dichiarato const 
        char *buffer = new char[strlen(str)+1];

        for(size_t i = 0; i < strlen(buffer); i++){
            buffer[i] = tolower(buffer[i]);
        }

        my_string temp{buffer};
        delete buffer;

        return temp;
    }

    
};

int my_string::length() const {
    return strlen(str);
}

my_string::my_string() : str{nullptr}{
    str = new char[1];
    str[0] = 0;   // Utilizzo la terminazione
}

my_string::my_string(const char *s) : str{nullptr}{    
    unsigned long len{0};

    if(s == nullptr){
        str = new char[1];
        str[0] = 0;
    }else{
        len = strlen(s);
        str = new char[len+1];
        strcpy(str, s);
    }
}

my_string::my_string(const my_string &to_copy) : my_string(to_copy.str){}

my_string::my_string(my_string &&to_move) : str{to_move.str}{
    to_move.str = nullptr;
}

const char *my_string::c_str()const {
    return str; 
}

