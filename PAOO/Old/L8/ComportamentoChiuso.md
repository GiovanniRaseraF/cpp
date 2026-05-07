# Comportamento chiuso
- Def: una classe è chiusa rispetto al comportamento se tutte le transazioni lasciano gli oggetti nel SdS

- Il comportamento che una sottoclasse eredita da una sopraclasse deve rispettare l'invariante della sottoclasse(!)

# Riepilogo
- Per avere gerarchia "a prova di bomba":
    1. inv sottoclasse più forte inv sottoclasse (SdS sottoclasse ha più vincoli sulle dim. della sopraclasse e vincoli nuovi sulle nuove dim.)

    2. pre nel metodo della sottoclasse pià debole