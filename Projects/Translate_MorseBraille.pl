%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASE DE CONOCIMIENTO TRADUCTOR BRAILLE Y MORSE %
% - HERBERT MAYORGA                              %         
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%================== MENU TRADUCTOR ==================
menu:- write('=========================='), nl,
    write('TRADUCCION ESPANOL A BRAILE Y CODIGO MORSE'), nl,
    write('-> Espanol: '), read(String), convertirLista(String, L),nl,
    write('-> Morse: '), traducirMorse(L),nl,
    write('-> Braille: '), traducirBraille(L).

%  ================== FUNCIONES PRINCIPALES ==================

% >> CONVERTIR STRING A UNA LISTA
convertirLista('',[]).
convertirLista(String,[Cab|Resto]):- sub_atom(String,0,1,_,Cab),
    sub_atom(String,1,_,0,S),convertirLista(S,Resto).

% >> TRADUCCIÓN A MORSE DENTRO DE UNA LISTA
traducirMorse([]).
traducirMorse([Cab|Resto]):- morse(Cab,X), write(X), traducirMorse(Resto).
% >> TRADUCCIÓN A BRAILLE DENTRO DE UNA LISTA
traducirBraille([]).
traducirBraille([Cab|Resto]):- braille(Cab,X), write(X), traducirBraille(Resto).

% ================== ALFABETO DE BRAILLE Y MORSE ==================

% >> ALFABETO BRAILE MINUSCULAS
braille('a','⠁').
braille('b','⠃').
braille('c','⠉').
braille('d','⠙').
braille('e','⠑').
braille('f','⠋').
braille('g','⠛').
braille('h','⠓').
braille('i','⠊').
braille('j','⠚').
braille('k','⠅').
braille('l','⠇').
braille('m','⠍').
braille('n','⠝').
braille('o','⠕').
braille('p','⠏').
braille('q','⠟').
braille('r','⠗').
braille('s','⠎').
braille('t','⠞').
braille('u','⠥').
braille('v','⠧').
braille('w','⠺').
braille('x','⠭').
braille('y','⠽').
braille('z','⠵').
braille(' ', ' ').

% >> ALFABETO BRAILE MAYUSCULAS
braille('A','⠁').
braille('B','⠃').
braille('C','⠉').
braille('D','⠙').
braille('E','⠑').
braille('F','⠋').
braille('G','⠛').
braille('H','⠓').
braille('I','⠊').
braille('J','⠚').
braille('K','⠅').
braille('L','⠇').
braille('M','⠍').
braille('N','⠝').
braille('O','⠕').
braille('P','⠏').
braille('Q','⠟').
braille('R','⠗').
braille('S','⠎').
braille('T','⠞').
braille('U','⠥').
braille('V','⠧').
braille('W','⠺').
braille('X','⠭').
braille('Y','⠽').
braille('Z','⠵').
braille(' ', ' ').
% >> ALFABETO MORSE MINUSCULAS
morse('a','.–').
morse('b','–...').
morse('c','–.–.').
morse('d','--.').
morse('e','-').
morse('f','..-.').
morse('g','--.').
morse('h','....').
morse('i','..').
morse('j','.---').
morse('k','-.-').
morse('l','.-..').
morse('m','--').
morse('n','-.').
morse('o','---').
morse('p','.--.').
morse('q','--.-').
morse('r','.-.').
morse('s','...').
morse('t','-').
morse('u','..-').
morse('v','...-').
morse('w','.--').
morse('x','-..-').
morse('y','-.--').
morse('z','--..').
morse(' ', ' ').

% >> ALFABETO MORSE MAYUSCULAS
morse('A','.–').
morse('B','–...').
morse('C','–.–.').
morse('D','–..').
morse('E','.').
morse('F','..–.').
morse('G','––.').
morse('H','....').
morse('I','..').
morse('J','.–––').
morse('K','–.–').
morse('L','.–..').
morse('M','––').
morse('N','–.').
morse('O','–––').
morse('P','.––.').
morse('Q','––.–').
morse('R','.–.').
morse('S','...').
morse('T','–').
morse('U','..–').
morse('V','...–').
morse('W','.––').
morse('X','–..–').
morse('Y','–.––').
morse('Z','––..').
morse(' ', ' ').

