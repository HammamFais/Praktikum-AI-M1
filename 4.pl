% ===== FAKTA =====
bawahan_langsung(burhan, adi).
bawahan_langsung(bahrun, burhan).
bawahan_langsung(bisrin, burhan).
bawahan_langsung(fahri, bahrun).
bawahan_langsung(farah, bahrun).
bawahan_langsung(ferdi, bisrin).

% ===== ATURAN =====
% b. Atasan langsung: kebalikan dari bawahan langsung
atasan_langsung(X, Y) :- bawahan_langsung(Y, X).

% d. Anak buah rekursif
% Base case
anak_buah(X, Y) :- bawahan_langsung(X, Y).
% Recursive case
anak_buah(X, Y) :-
    bawahan_langsung(X, Z),
    anak_buah(Z, Y).