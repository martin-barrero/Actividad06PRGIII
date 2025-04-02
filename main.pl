padre_de(hombre(homero), [hombre(bart), mujer(lisa), mujer(maggie)]).
padre_de(hombre(abraham), [hombre(herbert), hombre(homero)]).
padre_de(hombre(clancy), [mujer(marge), mujer(patty), mujer(selma)]).
madre_de(mujer(mona), [hombre(homero)]).
madre_de(mujer(jacqueline), [mujer(marge), mujer(patty), mujer(selma)]).
madre_de(mujer(marge), [hombre(bart), mujer(lisa), mujer(maggie)]).
madre_de(mujer(selma), [hijo(ling)]).

padre_de(hombre(X), Hijos) :- padre_de(hombre(X), Hijos).
madre_de(mujer(X), Hijos) :- madre_de(mujer(X), Hijos).
