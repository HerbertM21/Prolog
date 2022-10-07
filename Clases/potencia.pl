%Base de conocimiento de potencias
%Hecho por Philip
%

potencia(0,0,indeterminado):-!.
potencia(0,_,0):-!.
potencia(_,0,1):-!.
potencia(X,Y,Z):-Z is X^Y.
