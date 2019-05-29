padre(ricardo,marcos).
padre(ricardo,martina).
padre(norberto,ricardo).
padre(norberto,adolfo).
padre(ernesto, norberto).
padre(adolfo,joaquin).
%%padre(Padre, Hijo):-padre(P, Hijo), pareja(P,Padre).

pareja(ricardo, analia).
pareja(norberto,delia).
pareja(adolfo, alicia).
pareja(P1,P2):-pareja(P2,P1).



hijo(Hijo,Padre):-padre(Padre,Hijo).

hermano(H1,H2):-padre(P,H1),padre(P,H2), H1\=H2.

tio(Tio, Sobrino):- padre(Padre, Sobrino), hermano(Tio, Padre).
tio(Tio2,Sobrino):- tio(Tio1,Sobrino), pareja(Tio1,Tio2).

primo(P1,P2):-padre(Padre1,P1),padre(Padre2, P2),hermano(Padre1,Padre2).


abuelo(Abuelo,Nieto):-padre(P,Nieto),padre(Abuelo,P).
nieto(Nieto,Abuelo):-abuelo(Abuelo,Nieto).

yerno(Yerno, Abuelo):-pareja(Pareja,Yerno),padre(Abuelo,Pareja).

descendiente(Des,As):-padre(As,Des).
descendiente(Des,As):-padre(Padre,Des), descendiente(Padre,As).