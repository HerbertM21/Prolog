%BASE DE CONOCIMIENTO QUE RESUELVE LA CONJETURA DE COLLATZ
%HECHO POR HERBERT

mainCollatz:-write("Ingrese un numero"), nl, read(NUMERO), collatz(NUMERO).

collatz(X):-X=1, display(X), nl, write("Fin del collatz").

% CASO RECURSIVO
collatz(X):-X>1, display(X), nl, MODU is mod(X, 2), MODU = 0, X2 is X/2, collatz(X2).

collatz(X):-X>1, display(X), nl, MODU is mod(X, 2), MODU = 1, X2 is X*3+1, collatz(X2).


