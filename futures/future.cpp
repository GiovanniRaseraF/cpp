#include <iostream>
#include <future>

// Threads cannot share return the processing of a data
// Per trasferire dati tra i thread si usa il meccanismo di 
// std::future, std::promise

// il modello che viene implementato quando uso le future/promise
// è il modello di producer-consumer

// Il producer thread crea i dati
//  la promice setta il valore del dato da leggere 

// Il consumer thread aspetta l'arrivo dei dati
//  la future aspetta i dati 

// Il consumer thread poi riceve i dati 
//  la future ritorna il valore ricevuto 

//----
// la std::future è una struttura fondamentale del c++ concorrente
//   funziona con la maggiorparte degli oggetti asincroni e operazioni

// un oggetto di tipo std::future è solitamente creato automaticamente
// viene ottenuto da un oggetto di tipo std::promise oppure da altre 
// operazioni asincrone

