principalCiclo:-write("Ingrese el valor inicial"), nl, read(INI), write("Ingrese el valor final"), nl, read(FNL), ciclo(INI, FNL).

%CASO BASE
ciclo(IN,FN):-IN=FN, display(IN), nl, write("fin del ciclo"), !.

%CASO RECURSIVO
ciclo(IN,FN):-IN<FN, display(IN), nl, IN2 is IN+1, ciclo(IN2,FN), !.

