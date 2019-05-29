padre(ricardo,marcos).
padre(ricardo,martina).
padre(norberto,ricardo).
padre(norberto,adolfo).
padre(ernesto, norberto).
padre(adolfo,joaquin).
padre(Padre, Hijo):-padre(P, Hijo), pareja(P,Padre).

pareja(ricardo, analia).
pareja(norberto,delia).
pareja(adolfo, joaquin).
pareja(P1,P2):-pareja(P2,P1).



hijo(Hijo,Padre):-padre(Padre,Hijo).

hermano(H1,H2):-padre(P,H1),padre(P,H2), H1\=H2.

tio(Tio, Sobrino):- padre(Padre, Sobrino), hermano(Tio, Padre).

primo(P1,P2):-padre(Padre,P1),tio(Padre, P2).

abuelo(Abuelo,Nieto):-padre(P,Nieto),padre(Abuelo,P).
nieto(Nieto,Abuelo):-abuelo(Abuelo,Nieto).

yerno(Abuelo, Yerno):-pareja(Pareja,Yerno),padre(Abuelo,Pareja).

descendiente(As,Des):-padre(As,Des).
descendiente(As,Des):- padre(Padre,Des),descendiente(As,Padre).