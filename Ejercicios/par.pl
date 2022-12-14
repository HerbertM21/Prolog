%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      HERBERT MAYORGA      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Creamos la regla, y dentro de ella pedimos un valor al usuario.
% Ese valor se le calcur? el resto entre 2 para verificar si es igual a
% cero. Si es igual a cero, el n?mero es par, en caso contrario es
% impar.

espar:-write('Escribe el numero: '),
    read(A), nl, (A mod 2 =:= 0 ->
                 write('El n?mero es par.');
                 write('El n?mero es impar.')).

% Otra manera de escribirlo
espar2(A):- A mod 2 =:= 0. % TRUE/FALSE
