import random

def main():
    # Lista originale dei 23 Design Pattern
    patterns_original = [
        "Factory Method", "Abstract Factory", "Builder", "Prototype", "Singleton",
        "Adapter", "Bridge", "Composite", "Decorator", "Facade", "Flyweight", "Proxy",
        "Chain of Responsibility", "Command", "Iterator", "Mediator", 
        "Memento", "Observer", "State", "Strategy", "Template Method", "Visitor", "Interpreter"
    ]

    # Creiamo una copia per la sessione corrente
    pool_corrente = []

    print("--- Estrattore Casuale (Senza Ripetizioni) ---")
    print("Premi INVIO per un nuovo pattern. Digita 'esci' per chiudere.")
    print("-" * 45)

    while True:
        # Se il pool è vuoto, lo rigeneriamo e lo mischiamo
        if not pool_corrente:
            if len(patterns_original) == 23: # Solo per il primo avvio o reset
                print("\n🔄 Sessione completata o nuova! Rimescolamento mazzo...")
            pool_corrente = patterns_original.copy()
            random.shuffle(pool_corrente)

        user_input = input(f"\n[Residui: {len(pool_corrente)}] > Premi Invio (o 'esci'): ").strip().lower()
        
        if user_input == 'esci':
            print("Buono studio!")
            break
        
        # Estraiamo l'ultimo elemento della lista mischiata (pop)
        pattern_scelto = pool_corrente.pop()
        
        print(f"✨ Pattern estratto: >> {pattern_scelto.upper()} <<")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\nProgramma terminato. Ciao!")