%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            HERBERT MAYORGA                %
% LOGICA PARA LA CIENCIAS DE LA COMPUTACION.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Base De conocimiento juego de dados.

dados:-write('Ingresa un n�mero entre 3 y 18'), nl,
    write('N�mero: '), read(A),
    (A > 18; A < 3 -> write('ERROR. Es un n�mero entre 3 y 18')),
    nl, B is (random(2)+random(2)+random(2)), nl, A=:=B.
