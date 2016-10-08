% Wimal Perera
% Index No: 09/10008
% Sample parser in DCG notation

s(s(X,Y))  --> np(X), vp(Y).

np(np(X)) --> name1(X).
np(np(X, Y, Z)) --> det(X), adj(Y), noun(Z).
np(np(X)) --> simplePronoun(X).
np(np(X,Y)) --> det(X), noun(Y).

vp(vp(X)) --> simpleVerb(X).
vp(vp(X,Y)) --> complexVerb(X), object(Y).

object(object(X,Y,Z)) --> det(X), adj(Y), noun(Z).
object(object(X,Y)) --> det(X), noun(Y).
object(object(X,Y,Z)) --> pronoun(X), det(Y), noun(Z).
object(object(X,Y,Z)) --> pronoun(X), complexVerb(Y), pronoun(Z).

name1(name1(X)) --> [X], {name1(X)}.
name1(john).

complexVerb(complexVerb(X)) --> [X], {complexVerb(X)}.  
complexVerb(visited).
complexVerb(chased).
complexVerb(gave).
complexVerb(thought).
complexVerb(knew).

simpleVerb(simpleVerb(X)) --> [X], {simpleVerb(X)}.  
simpleVerb(jumped).

simplePronoun(simplePronoun(X)) --> [X], {simplePronoun(X)}.
simplePronoun(i).
simplePronoun(she).

pronoun(pronoun(X)) --> [X], {pronoun(X)}.
pronoun(you).
pronoun(him).
pronoun(me).

det(det(X)) --> [X], {det(X)}.
det(a).
det(the).

noun(noun(X)) --> [X], {noun(X)}. 
noun(boy).
noun(dog).
noun(man).
noun(cd).
noun(chic).

adj(adj(X)) --> [X], {adj(X)}.
adj(tall).
adj(old).
adj(nasty).


