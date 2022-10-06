%Base de conocimiento de familia
%Hecha por Philip
%

esMadre(ximena,philip).
esMadre(ximena,franchesca).
esMadre(ximena,cynthia).
esMadre(ximena,floripondio).
esMadre(estefania,emilia).
esMadre(ines,ximena).

esPadre(francisco,philip).
esPadre(francisco,floripondio).
esPadre(francisco,franchesca).
esPadre(francisco,cynthia).
esPadre(philip,emilia).

esNieto(X,Y):-esPadre(Z,X),esPadre(Y,Z);esPadre(Z,X),esMadre(Y,Z);esMadre(Z,X),esPadre(Y,Z);esMadre(Z,X),esMadre(Y,Z).

sonHermanos(H1,H2):-esPadre(X,H1),esPadre(X,H2),esMadre(Y,H1),esMadre(Y,H2),H1\=H2.

esTio(X,Y):-(esPadre(Z,Y);esMadre(Z,Y)),sonHermanos(X,Z).
