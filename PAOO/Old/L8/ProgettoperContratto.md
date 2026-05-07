# Progetto per contratto

- invocazione di un metodo m (con pre e post) dalla classe Fornitore dalla clase Cliente (con Inv)

- Contratto fra cliente e fornitore
- Il fornitore fornisce il servizio dato dal metodo m

- Il fornitore garantisce che se pre & inv sono valide allora dopo l'esecuzione di m sarà valida post (& inv)

- Il fornitore chiede che valgano pre e inv
(altrimenti non garantisce nulla)

- Pre = Richiesta che il metodo / fornitore fa (al chiamante / cliente)
- Post = Assicurazione, garanzia cheil metodo / fornitore dà

## Chi contralla la pre ? 
- Contratto -> IL CLIENTE (chiamate) !!! controlla la precondizione
- Il fornitore (metodo chiamato) può non coontrollarla

- Il controllo duplicato -> porta ad uno spreco
    - il forniotre deve non controllarla

### Esercizio 
L'invariante è necessaria ? Si potrebbe eliminarla mantenendo le stesse proprietà di una classe ? Come ? 
- Lo posso fare semplicemento mettendo pre e post ad ogni metodo di classe


###  pre e post vantaggi per il fornitore
Un precondizione forte è POSITIVA per il fornitore
Un postcondizione forte è NEGATIVA per il fornitore

- L'invariante forte, può positivo e negativo dipende

