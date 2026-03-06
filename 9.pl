pembuat(terry, shrdlu).
pembuat(bill, lunar).
pembuat(roger, sam).
pembuat(gottlob, begriffsschrift).
pembuat(bertrand, principia).
pembuat(alfred, principia).

buku(begriffsschrift).
buku(principia).

program(lunar).
program(sam).
program(shrdlu).

penulis(X) :-
    pembuat(X, Y),
    buku(Y).

penulisbuku(X, Y) :-
    pembuat(X, Y),
    buku(Y).

