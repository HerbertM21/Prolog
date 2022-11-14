% Axiomas del sucesor
sucesor(N, M) :- M is N+1.
% Axiomas del antecesor
antecesor(N, M) :- M is N-1.

% Axiomas de la suma
suma(N, 0, N).
suma(0, N, N).
suma(M, N, R):- N > 0, antecesor(N, AN), suma(M, AN, RT), sucesor(RT, R), !.
suma(M, N, R) :- N < 0, sucesor(N, SN), suma(M, SN, RT), antecesor(RT, R).

% Axiomas de la resta
resta(N, 0, N).
resta(0, N, R) :- N < 0, sucesor(N, SN), antecesor(SN, R), !.
resta(M, N, R) :- N > 0, antecesor(N, AN), resta(M, AN, RT), antecesor(RT, R), !.
resta(M, N, R) :- N < 0, sucesor(N, SN), resta(M, SN, RT), sucesor(RT, R), !.

multiplicacion(_, 0, 0).
multiplicacion(0, _, 0).
multiplicacion(M, N, R) :- N > 0, antecesor(N, AN), multiplicacion(M, AN, RT), suma(RT, M, R), !.
multiplicacion(M, N, R) :- N < 0, sucesor(N, SN), multiplicacion(M, SN, RT), suma(RT, M, R).

% Axiomas de la division con resultado numero entero

division(_, 0, 0).
division(0, _, 0).
division(M, N, 0) :- M < N.
division(M, N, R) :- N > 0, resta(M, N, RT), division(RT, N, RT2), sucesor(RT2, R), !.
division(M, N, R) :- N < 0, resta(M, N, RT), division(RT, N, RT2), sucesor(RT2, R), !.

% Axiomas del igual
igual(0, 0):- true,!.
igual(M, N) :- M > 0, N > 0, antecesor(M, AM), antecesor(N, AN), igual(AM, AN), !.
igual(M, N) :- M < 0, N < 0, sucesor(M, AM), sucesor(N, AN), igual(AM, AN), !.


% Si M y N son positivos, entonces M y N son mayores que 0, por lo tanto, se puede aplicar el antecesor a M y N
% para obtener AM y AN, que son menores que M y N respectivamente. Luego, se aplica el igual a AM y AN, que
% son menores que M y N respectivamente, por lo tanto, se puede aplicar el antecesor a AM y AN para obtener
% AM2 y AN2, que son menores que AM y AN respectivamente. Luego, se aplica el igual a AM2 y AN2, que son
% menores que AM y AN respectivamente, por lo tanto, se puede aplicar el antecesor a AM2 y AN2 para obtener
% AM3 y AN3.

