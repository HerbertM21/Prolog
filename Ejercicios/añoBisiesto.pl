%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      HERBERT MAYORGA      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Base de conocimiento - A?o bisiesto.

bisiesto:-write('Escribe el a?o: '),
    read(A), nl, (A mod 4 =:= 0 ->
                 write('El a?o es bisiesto.')).


