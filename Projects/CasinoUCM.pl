%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE DE CONOCIMIENTO CALORIAS Y TIPO DE MENU %
% - HERBERT MAYORGA                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%=== CALORIAS DE LOS ALIMENTOS ===
calorias(lechuga, 10).
calorias(apio,16).
calorias(cebolla,40).
calorias(cilantro,4).
calorias(pollo,239).
calorias(cerdo,242).
calorias(pavo,145).
calorias(vacuno,250).
calorias(pure,88).
calorias(arroz,130).
calorias(papas,312).
calorias(naranja,41).
calorias(manzana,52).
calorias(sandia,50).


% === LISTA DE ALIMENTOS POR CATETORIA ===
ensalada([apio,cebolla,cilantro]).
carne([pollo, cerdo, pavo, vacuno]).
acompanamiento([pure, arroz, papas]).
postre([naranja, manzana, sandia]).


% ========== MENSAJE AUTOMATICO ==========
mensaje:-nl,
    write('========================='),nl,
    write('Bienvenido al Casino UCM'),nl,
    write('========================='),nl,
    write('Escriba ?- inicio(1). para calcular las calorias del primer menu disponible'),nl,
    write('Escriba ?- inicio(2). para calcular las calorias del segundo menu disponible'),nl,
    write('Escriba ?- inicio(3). para calcular las calorias del tercer menu disponible'),nl,
    write('Escriba ?- inicio(4). para calcular las calorias del cuarto menu disponible'),nl,
    write('Escriba ?- inicio(5). para calcular las calorias de un menu personalizado'),nl.

% ==== PRIMER MENU CON LECHUGA, POLLO, ARROZ Y MANZANA ====
menu(1,[lechuga,pollo,arroz,manzana]).
% ==== SEGUNDO MENU CON APIO, PAVO, PURE Y SANDIA ====
menu(2,[apio,pavo,pure,sandia]).
% ==== TERCER MENU CON CEBOLLA, CERDO, PAPAS, NARANJA ====
menu(3,[cebolla,cerdo,papas,naranja]).
% ==== CUARTO MENU CON CILANTRO, VACUNO, ARROZ, MANZANA ====
menu(4,[cilantro,vacuno,arroz,manzana]).

% === SUMA RECURSIVA DE ALIMENTOS ===
sumaCalorias([],0).
sumaCalorias([X|Y],N):- sumaCalorias(Y,M), calorias(X,C), N is M+C.


% ==== DETERMINAR LAS CALORIAS Y TIPO DE MENU ====
tipodemenu(X):- sumaCalorias(X,N), write('Calorias: '), write(N), nl,
    N < 450, write('Almuerzo Light'); sumaCalorias(X,N), N >= 450, write('Almuerzo Pesado').

inicio(1):- write('========== MENU N1 ========='),nl,
    write('- Ensalada: Lechuga'),nl,
    write('- Carne: Pollo'),nl,
    write('- Acompanamiento: Arroz'),nl,
    write('- Postre: Manzana'),nl,
    write('=============================='),nl,
    write('INFORMACION: '), menu(1, X), tipodemenu(X).

inicio(2):- write('========== MENU N2 ========='),nl,
    write('- Ensalada: Apio'),nl,
    write('- Carne: Pavo'),nl,
    write('- Acompanamiento: Pure'),nl,
    write('- Postre: Sandia'),nl,
    write('=============================='),nl,
    write('INFORMACION: '), menu(2, X), tipodemenu(X).

inicio(3):- write('========== MENU N3 ========='),nl,
    write('- Ensalada: Cebolla'),nl,
    write('- Carne: Cerdo'),nl,
    write('- Acompanamiento: Papas'),nl,
    write('- Postre: Naranja'),nl,
    write('=============================='),nl,
    write('INFORMACION: '), menu(3, X), tipodemenu(X).

inicio(4):- write('========== MENU N4 ========='),nl,
    write('- Ensalada: Cilantro'),nl,
    write('- Carne: Vacuno'),nl,
    write('- Acompanamiento: Arroz'),nl,
    write('- Postre: Manzana'),nl,
    write('=============================='),nl,
    write('INFORMACION: '), menu(4, X), tipodemenu(X).

inicio(5):- write('========== MENU PERSONALIZADO ========='),nl,
    write('Carta de Alimentos'),nl,
    write('==================='),nl,
    write('Ensaladas: '),ensalada(X),write(X),nl,
    write('Carnes: '),carne(Y),write(Y),nl,
    write('Acompanamientos: '),acompanamiento(W),write(W),nl,
    write('Postres: '),postre(Z),write(Z),nl,
    write('======================================='),nl,
    write('Ingrese la ensalada: '),read(Ensalada),nl,
    write('Ingrese la carne: '),read(Carne),nl,
    write('Ingrese el acompanamiento: '),read(Acompanamiento),nl,
    write('Ingrese el postre: '),read(Postre),nl,
    write('INFORMACION: '), tipodemenu([Ensalada,Carne,Acompanamiento,Postre]).


% ==== MENSAJE AUTOMATICO GENERADO ====
:- mensaje.
