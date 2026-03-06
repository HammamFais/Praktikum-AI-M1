bekerjasama(ani, budi).
suka(ani, pizza).
suka(budi, nasi_pecel).
tidak_suka(budi, pizza).
suka_semua(agus, makanan).
hobby(andi, membaca).
hobby(budi, travelling).

teman(X, Y) :- bekerjasama(X, Y).

membenci(X, Y) :- \+ suka(X, Y).

bermusuhan(X, Y) :- \+ suka(X, Y), \+ suka(Y, X).