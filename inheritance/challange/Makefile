all: main

main: account.o main.o
        g++ -std=c++20 -Wall -Werror -o main account.o main.o
account.o: account.cpp account.hpp
        g++ -std=c++20 -Wall -Werror -c account.cpp
main.o: main.cpp
        g++ -std=c++20 -Wall -Werror -c main.cpp
