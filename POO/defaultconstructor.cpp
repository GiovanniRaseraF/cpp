/*
Il costruttore di default è un costruttore che:
    - non si aspetta degli argomenti

Se non viene specificato un costruttore viene utilizzato un costruttore
di default
    - c++ genera un costruttore di default che non fa nulla

Chiamato quando di chiama un costruttore senza argomenti

player frank;
player *p2_ptr = new player;
*/

class account{
    public:
    int a;

    account(int val){
        a = val;
    }

    account() = default;
};

int main(){
    // Se faccio l'override del costruttore non esiste quello di defautl
    account a1;
    account a2(10);     // Qeusto posso farlo

    return 0;
}