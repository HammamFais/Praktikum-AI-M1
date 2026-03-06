lelaki(anto).
lelaki(budi).
lelaki(deni).
lelaki(hadi).
lelaki(rudi).
lelaki(andi).

wanita(wati).
wanita(ita).
wanita(ida).
wanita(dina).
wanita(rita).

putra(budi, anto).
putra(budi, wati).
putra(hadi, deni).
putra(hadi, ita).
putra(andi, ida).
putra(andi, rudi).

putri(ita, anto).
putri(ita, wati).
putri(ida, anto).
putri(ida, wati).
putri(rita, ida).
putri(rita, rudi).
putri(dina, budi).

orangtua(X, Y) :-
    (
        putra(Y, X);
        putri(Y, X)
    ).

saudara_lk(X, Y) :-
    lelaki(X),
    orangtua(Z, X),
    orangtua(Z, Y).

saudara_pr(X, Y) :-
    wanita(X),
    orangtua(Z, X),
    orangtua(Z, Y).

paman(X, Y) :-
    lelaki(X),
    orangtua(Z, Y),
    saudara_lk(X,Z).

bibi(X, Y) :-
    wanita(X),
    orangtua(Z, Y),
    saudara_pr(X, Z).

kakek(X, Y) :-
    lelaki(X),
    orangtua(Z, Y),
    orangtua(X, Z).

nenek(X, Y) :-
    wanita(X),
    orangtua(Z, Y),
    orangtua(X, Z).

cucu(X, Y) :-
    orangtua(Y, Z),
    orangtua(Z, X).
