% Wimal Perera
% Index No: 09/10008
% Sample parser in DCG notation

s(s(X,Y,Z)) --> subject(X, Purushaya, Number), object(Y), verb(Z, Purushaya, Number).
s(s(X,Y,Z)) --> subject(X, Purushaya, Number, Gender), object(Y), verb(Z, Purushaya, Number, Gender).

object(object(Y)) --> [Y], {object(Y)}.
object(gedara).

subject(subject(X), Purushaya, Number) --> [X], {subject(X, Purushaya, Number)}.
subject(mama, utthama, singular).
subject(api, utthama, plural).
subject(ovuhu, prathama, plural).

subject(subject(X), Purushaya, Number, Gender) --> [X], {subject(X, Purushaya, Number, Gender)}.
subject(goviya, prathama, singular, male).
subject(geviliya, prathama, singular, female).
subject(ohu, prathama, singular, male).
subject(eya, prathama, singular, female).

verb(verb(Z), Purushaya, Number) --> [Z], {verb(Z, Purushaya, Number)}.
verb(giyemi, utthama, singular).
verb(giyemu, utthama, plural).
verb(giyaha, prathama, plural).

verb(verb(Z), Purushaya, Number, Gender) --> [Z], {verb(Z, Purushaya, Number, Gender)}.
verb(giyeya, prathama, singular, male).
verb(giyaya, prathama, singular, female).



