%Base de conocimiento del casino nuevo UCM
%Hecho por Philip
%

calorias(apio,16).
calorias(cebolla,40).
calorias(cilantro,4).
calorias(pollo,239).
calorias(cerdo,242).
calorias(pavo,145).
calorias(vacuno,250).
calorias(pure,88).
calorias(arroz,130).
calorias(papasFritas,312).
calorias(naranja,41).
calorias(manzana,52).
calorias(pinia,50).

ensaladas(apio).
ensaladas(cebolla).
ensaladas(cilantro).
carne(pollo).
carne(cerdo).
carne(pavo).
carne(vacuno).
acompaniamientos(pure).
acompaniamientos(arroz).
acompaniamientos(papasFritas).
postres(naranja).
postres(manzana).
postres(pinia).

esAlmuerzo(W,X,Y,Z):-ensaladas(W),carne(X),acompaniamientos(Y),postres(Z).

light(W,X,Y,Z):-esAlmuerzo(W,X,Y,Z),calorias(W,A),calorias(X,B),calorias(Y,C),calorias(Z,D),Suma is (A+B+C+D),Suma<450.

pesado(W,X,Y,Z):-esAlmuerzo(W,X,Y,Z),calorias(W,A),calorias(X,B),calorias(Y,C),calorias(Z,D),Suma is (A+B+C+D),Suma>=450.




