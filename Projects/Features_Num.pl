%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE DE CONOCIMIENTO CARACTERISTICAS DE NUMERO %
% - HERBERT MAYORGA                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ========== MENU ===============
inicio:-
    write('==== VERIFICACION TIPO DE NUMERO ===='), nl,
    write('Escriba el nUmero a verificar: '), read(X),nl,
    caracteristicas(X).

caracteristicas(X):-
    write('========== CARACTERISTICAS =========='),nl,
    write('(1) NUMERO PAR: '),esPar(X),nl,
    write('(2) NUMERO PRIMO: '),esPrimo(X),nl,
    write('(3) NUMERO NARCISISTA: '),esNarciso(X),nl,
    write('(4) RAIZ CUADRADA EXACTA: '), esRaizExacta(X).

% ============ FUNCION NECESARIA ============
% >> CANTIDAD DE DIGITOS DE UN NUMERO
cantidad(0,0).
cantidad(X,N):- X > 0, X2 is X//10, cantidad(X2,N2), N is N2+1.

% ========== VERIFICACION NUM =============
% >> NUMERO PAR
esPar(X):- X > 0, verificarPar(X, 2), !; write('¡ERROR! NUMERO NEGATIVO').

verificarPar(X, Y):- 0 is X mod Y, write('El numero es par.'); write('El numero no es par.').

% >> NUMERO PRIMO
esPrimo(X):- X > 0, verificarPrimo(X,2), !; write('¡ERROR! NUMERO NEGATIVO').

verificarPrimo(X, Y):- Y >= X, write('El numero es primo.');
0 is X mod Y, write('El numero no es primo.');Y2 is Y+1,
    verificarPrimo(X, Y2).

% >> NUMERO NARCISO

% CONVERSION ITERACION PYTHON/JAVASCRIPT A PROLOG POR HERBERT MAYORGA.
% Y = ACUMULADOR DE MULTIPLICACION DE DIGITOS
% X = NUMERO
% Z = ELIMINAR ULTIMO DIGITO DE X
% R = CAPTURAR ULTIMO DIGITO DE X
% K = LONGITUD DE DIGITOS DE X

esNarciso(X):- cantidad(X, K), X > 0, N is X mod 10, Y is N^K, Z is X//10,
    verificarNarciso(Z, X, Y, K), !; write('¡ERROR! NÚMERO NEGATIVO').

verificarNarciso(Z, X, Y, _):- Z = 0, X == Y, write('El numero es narciso.'), !.
verificarNarciso(Z, X, Y, _):- Z = 0, X \= Y, write('El numero no es narciso.').
verificarNarciso(Z, X, Y, K):- Z > 0, T is Z mod 10, C is T^K,
    S is C + Y, L is Z//10, verificarNarciso(L,X,S,K),!.

% >> RAIZ CUADRADA EXACTA
esRaizExacta(X):- X > 0, Y is integer(sqrt(X))*integer(sqrt(X)),
    verificarRaiz(X,Y),!; write('¡ERROR! NÚMERO NEGATIVO').

verificarRaiz(X,Y):- X == Y -> write('El numero tiene raiz cuadrada exacta.');
write('El numero no tiene raiz cuadrada exacta.').



