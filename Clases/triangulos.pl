%Base de conocimiento de los tri�ngulos
%Hecho por Philip
%

equilatero(X,Y,Z):-X=Y,Y=Z,Z=X.

escaleno(X,Y,Z):-X\=Y,Y\=Z,Z\=X.

isosceles(X,Y,Z):-(X\=Y,X\=Z,Y=Z),!;(X=Y,Z\=X,Y\=Z),!;(X=Z,Y\=X,Y\=Z),!.

