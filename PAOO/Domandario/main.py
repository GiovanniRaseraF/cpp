import re
import random as rnd

def leggi_domande_da_markdown(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        testo = f.read()

    blocchi_domande = testo.split('---')
    domande = []

    for blocco in blocchi_domande:
        riga_domanda = re.search(r'##\s*(\d+)\.\s*(.*?)\n', blocco)
        opzioni = re.findall(r'^([A-E])\.\s*(.*?)$', blocco, re.MULTILINE)
        risposta_giusta = "A" # re.search(r'\w+', blocco)
        risposta_giusta = re.search(r'Risposta corretta: \s*(.*?)\n', blocco).group(1)

        if riga_domanda and opzioni and risposta_giusta:
            numero = int(riga_domanda.group(1))
            testo_domanda = riga_domanda.group(2)
            risposte = {lettera: testo for lettera, testo in opzioni}
            corretta = risposta_giusta
            domande.append({
                "numero": numero,
                "domanda": testo_domanda,
                "opzioni": risposte,
                "corretta": corretta
            })

    # print(domande)
    return domande

def create_random_mapping():
    from_to = {} # Dict
    to_from = {} # Dict
    fr = ["A", "B", "C", "D", "E"]
    to = ["A", "B", "C", "D", "E"]
    rnd.shuffle(to)

    for i in range(len(fr)):
        from_to[fr[i]] = to[i]
        to_from[to[i]] = fr[i]

    to_from = sorted(to_from.items())
    to_from_ret = {}
    for (k, v) in to_from:
        to_from_ret[k] = v

    return from_to, to_from_ret

def esegui_quiz(domande):
    punteggio = 0
    cp = (i for i in (sorted(domande, key=lambda x: x["numero"])))
    cp = (list(cp))
    rnd.shuffle(cp)

    for d in cp:
        from_to, to_from = create_random_mapping()
        print(f"\nDomanda {d['numero']}: {d['domanda']}")
        for fr, to in from_to.items():
            print(f"  {fr}. {d["opzioni"][to]}")

        risposta_utente = input("Inserisci la tua risposta (A/B/C/D/E): ").strip().upper()
        corretta = to_from[d["corretta"]]
        if risposta_utente == corretta:
            print("✅ Corretto!")
            punteggio += 1
        else:
            print(f"❌ Sbagliato. La risposta corretta era: {corretta}")
            
    print(f"\nPunteggio finale: {punteggio}/{len(domande)}")

# ESECUZIONE
if "__main__" == __name__:
    print(create_random_mapping())
    percorso_file = input("Inserisci il percorso del file Markdown: ").strip()
    domande = leggi_domande_da_markdown(percorso_file)
    
    if domande:
        esegui_quiz(domande)
    else:
        print("Nessuna domanda trovata nel file.")