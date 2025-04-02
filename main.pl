padre(hombre(abraham), [hombre(herbert), hombre(homero)]).
padre(hombre(clancy), [mujer(marge), mujer(patty), mujer(selma)]).
padre(hombre(homero), [hombre(bart), mujer(lisa), mujer(maggie)]).
madre(mujer(mona), [hombre(homero)]).
madre(mujer(jacqueline), [mujer(marge), mujer(patty), mujer(selma)]).
madre(mujer(marge), [hombre(bart), mujer(lisa), mujer(maggie)]).
madre(mujer(selma), [mujer(ling)]).

padre_de(X, Y) :- padre(hombre(X), Hijos), 
    (member(hombre(Y), Hijos); member(mujer(Y), Hijos)).
madre_de(X, Y) :- madre(mujer(X), Hijos), 
    (member(hombre(Y), Hijos); member(mujer(Y), Hijos)).

abuelo_de(X, Y) :-
    padre_de(X, Z), (padre_de(Z, Y); madre_de(Z, Y)).

abuela_de(X, Y) :-
    madre_de(X, Z), (padre_de(Z, Y); madre_de(Z, Y)).

hermano_de(X, Y) :-
    (padre(hombre(_), Hijos); madre(hombre(_), Hijos)),
    member(hombre(X), Hijos),
    (member(hombre(Y), Hijos); member(mujer(Y), Hijos)),
    X \= Y.

hermana_de(X, Y) :-
    (padre(mujer(_), Hijos); madre(mujer(_), Hijos)),
    member(mujer(X), Hijos),
    (member(hombre(Y), Hijos); member(mujer(Y), Hijos)),
    X \= Y.
