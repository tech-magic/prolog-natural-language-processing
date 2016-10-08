% Wimal Perera
% Index No: 09/10008
% Sample parser in DCG notation

s  --> np, vp.

np --> name1.
np --> det, adj, noun.
np --> simplePronoun.
np --> det, noun.

vp --> simpleVerb.
vp --> complexVerb, object.

object --> det, adj, noun.
object --> det, noun.
object --> pronoun, det, noun.
object --> pronoun, complexVerb, pronoun.

name1 --> [john].
complexVerb --> [visited]; [chased]; [gave]; [thought]; [knew].
simpleVerb --> [jumped].
simplePronoun --> [i]; [she].
pronoun --> [you]; [him]; [me].
det --> [a]; [the].
noun --> [boy]; [dog]; [man]; [cd]; [chic].
adj --> [tall]; [old]; [nasty].

% To test:
%  ?- s([the,tall,boy,jumped],[]).
%  true
%  ?- s([john,visited,the,old,man],[]).
%  true
%  ?- s([a,nasty,dog,chased,the,chic],[]).
%  true
%  ?- s([she,gave,me,the,cd],[]).
%  true
%  ?- s([i,thought,you,knew,him],[]).
%  true
%  ?- s([the,boy,jumped,the,girl],[]).
%  false
%  ?- s([the,john,visited,the,man],[]).
%  false
%  ?- s([a,dog,chase,the,cat],[]).
%  false
%  ?- s([she,gave,me],[]).
%  false
%  ?- s([i,saw,two,dog],[]).
%  false

