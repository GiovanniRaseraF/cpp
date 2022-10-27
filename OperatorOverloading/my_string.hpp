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

    my_string operator+(const my_string &to_add) const {
        unsigned long thislen = strlen(str);
        unsigned long to_addlen = strlen(to_add.str);

        char *buffer = new char[thislen + to_addlen + 1];
        strcpy(buffer, str);
        strcpy(buffer+thislen, to_add.str);


        PRINTLN(buffer);

        my_string temp{buffer};
        delete buffer;

        return temp;
    }

    /// @brief Elimina i caratteri in to_sub da this
    /// @param to_sub la stringa da eliminare
    /// @return una my_string sensa i caratteri di to_sub
    my_string operator-(const my_string &to_sub) const {
        unsigned long thislen = strlen(str);
        unsigned long to_sublen = strlen(to_sub.str);

        char *buffer = new char[thislen];
        char *bufferdeleted{nullptr};
        unsigned long deletedlen = 0;

        strcpy(buffer, str);
        
        // Seleziono i caratteri che devo togliere
        for(size_t i = 0; i < to_sublen; i++){
            char todel = to_sub.str[i];
            for(size_t j = 0; j < thislen; j++){
                if (str[j] == todel){
                    buffer[j] = 0;
                }else{
                    deletedlen++;
                }
            }
        }

        bufferdeleted = new char[deletedlen+1];

        for(size_t i = 0, deli = 0; i < thislen; i++){
            if(buffer[i] != 0){
                bufferdeleted[deli] = buffer[i];
                deli++;
            }
        }
        bufferdeleted[deletedlen] = 0;
        
        my_string temp{bufferdeleted};

        delete bufferdeleted;
        delete buffer;

        return temp;        
    }

    bool operator==(const my_string &to_compare) const {
        if(this == &to_compare) return true;

        unsigned long thislen = strlen(str);
        unsigned long to_comparelen = strlen(to_compare.str);
        if(thislen != to_comparelen) return false;

        for(size_t i = 0; i < thislen; i++)
            if (str[i] != to_compare.str[i])
                return false;
        
        return true;
    }

    bool operator<(const my_string &to_compare) const {
        if(this == &to_compare) return false;

        int compare = strcmp(str, to_compare.str);
        PRINT("Compare:"); PRINTLN(compare);

        return compare < 0;
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

