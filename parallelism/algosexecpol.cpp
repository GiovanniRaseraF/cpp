/*
Algorithms and execution policies

Alcuni algoritmi sono di natura sequenziali siccome 
il risultato dell'esecuzione dipende fortemente dalla 
sequenzialità delle informazioni che vengono presentate

- un esempio di questo è il programma di conversione iota
oppure equal_range.

Alcuni algoritmi che si trovano in <numeric> sono specificati come 
sequenziali, sono stai implementati con le policies 
e sono stati rinominati 
ad esempio:
- accumulate -> reduce
- partial_sum -> inclusive_scan, exclusive_scan

Ci sono anche degli algoritmi combinati come:
- transform + inner_product -> transform_reduce




Una aspetto importante è che è sbagliato ottimizzare 
subito il codice, meglio fare prima una soluzione 
naive e poi pensare ad ottimizzarla

io questo lo vedo come benchmarc per capire quanto si è 
migliorati e un modo per testere se il nuovo 
algo da i risultati che volgiamo

Una sorta di test del funzionamento
*/

#include <numeric>
