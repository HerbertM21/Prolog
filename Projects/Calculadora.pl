%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE DE CONOCIMIENTO CALCULADORA ARITMETICA %
% - HERBERT MAYORGA                           %
% - GABRIEL LEIVA                             %
% - BENJAMIN POBLETE                          %
% - JEAN LOZANO                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ==== MENU INICIO ====
menu:-
    write("==== CALCULADORA ===="), nl,
    write("1) SUMA"), nl,
    write("2) RESTA"), nl,
    write("3) MULTIPLICACION"), nl,
    write("4) DIVISION"), nl,
    write("5) POTENCIA"), nl,
    write("6) LOGARITMO NATURAL"), nl,
    write('7) LOGARITMO BASE 10'),nl,
    write("8) RESTO"), nl,
    write("====================="), nl,
    write("OPCION: "), read(OPCION),nl,
    write("====================="),nl, numeros(OPCION).

% ==== ENTRADA NUMEROS ====
numeros(OPCION):-
    OPCION == 5, write('Ingrese el número base: '), read(X), nl,
    write('Ingrese el exponente: '), read(Y), nl, salida(OPCION, X, Y);

    OPCION == 6, write('Ingrese el número: '), read(X), nl, salida(OPCION, X, _);

    OPCION == 7, write('Ingrese el número: '), read(X), nl, salida(OPCION, X, _);

    OPCION > 8, write('Ingrese una opción valida'), nl, menu, nl;

    write('Ingrese el primer número: '),
    read(X), nl,
    write('Ingrese el segundo número: '),
    read(Y), nl, salida(OPCION, X, Y).

% ==== OPERACIONES MATEMATICAS ====
suma(X,Y,Z):- Z is X + Y.
resta(X,Y,Z):- Z is X - Y.
multiplicacion(X,Y,Z):- Z is X * Y.
division(X,Y,Z):- Z is X / Y.
potencia(X,Y,Z):- Z is X^Y.
logaritmoNatural(X,Z):- Z is log(X).
logaritmo10(X,Z):- Z is log10(X).
resto(X, Y, Z):- Z is X mod Y.

% ==== SALIDA DE PROGRAMA ====
salida(1, X, Y) :- suma(X, Y, Z), write("- SUMA: "), display(Z), nl.
salida(2, X, Y) :- resta(X, Y, Z),write("- RESTA: "), display(Z) , nl.
salida(3, X, Y) :- multiplicacion(X, Y, Z),write("- MULTIPLICACION: "), display(Z), nl.
salida(4, _, 0) :- write("!SYNTAX ERROR¡ DIVISIÓN POR 0"), nl.
salida(4, X, Y) :- division(X, Y, Z),write("- DIVISION: "), display(Z) , nl.
salida(5, X, Y) :- potencia(X, Y, Z),write("- POTENCIA: "), display(Z), nl.
salida(6, X, _) :- logaritmoNatural(X, Z),write("- LOGARITMO: "), display(Z), nl.
salida(7, X, _) :- logaritmo10(X, Z),write("- LOG. NATURAL: "), display(Z), nl.
salida(8, X, Y) :- resto(X, Y, Z), write("- RESTO: "), display(Z), nl.

