#include <thread>
#include <iostream>

class thread_guard{
    std::thread t;
    public:
    // std::thread è move only
    explicit thread_guard(std::thread &&to_move) : t{std::move(to_move)}{}

    ~thread_guard(){
        // RAII: faccio una realease della risorsa thread
        if(t.joinable()){
            // Devo controllare che sia joinnabile per chiamare join
            std::cout << "Posso fare il join" << std::endl;
            t.join();
        }
    }

    // delete copy and assignment
    thread_guard(const thread_guard &) = delete;
    thread_guard &operator=(const thread_guard &) = delete;

    // accetto il move
    thread_guard(thread_guard &&) noexcept = default;
    thread_guard &operator=(thread_guard &&) noexcept = default;
};

int main(){
    thread_guard t1{std::thread{[](){
        std::cout << "Hello" << std::endl;
    }}};

    std::jthread t2{[](){ // vscode non lo riconosce devo usare -std=c++20
        std::cout << "Questo è un jthread" << std::endl;
    }};

}