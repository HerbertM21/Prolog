%Base de conocimiento de la lógica proposicional
%Hecho por Philip
%

negacion(v,f).
negacion(f,v).

disyuncion(v,_,v).
disyuncion(f,X,X).

conjuncion(v,X,X).
conjuncion(f,_,f).

implicancia(v,X,X).
implicancia(f,_,v).

equivalencia(X,X,v).
equivalencia(X,Y,f):-X\=Y.

