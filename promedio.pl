%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            HERBERT MAYORGA                %
% LOGICA PARA LA CIENCIAS DE LA COMPUTACION.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

promedio:-write('Ingrese las notas respectivas:'), nl,
    write('Nota 1: '),read(A), nl,
    write('Nota 2: '),read(B), nl,
    C is round((A*0.3+B*0.7)/2), write(C). % Funcion para redondear la operación.
