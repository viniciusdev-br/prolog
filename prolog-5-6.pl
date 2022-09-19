inv([],[]).
inv([X],[X]).
inv([X | Y], YX):- inv(Y, Yi), append(Yi, [X], YX).

%?- inv([1,3,5], X).
% sim(X):- se inverso de X é igual a X

sim(X):- inv(X,X).  %se é palindromo
/*
d(0,zero).
d(1,one).
d(2,two).
d(3,three).
d(4,four).
d(5,five).
d(6,six).
d(7,seven).
d(8,eight).
d(9,nine).

txt([X | Y], [Xt | Yt]) :- d(X, Xt), txt(Y, Yt).
txt([], []).

% ?- txt([1,2,3], X). */

estrada(1,a,b).
estrada(3,b,c).
estrada(6,c,f).

rota(A,B,R):-estrada(X,A,B), R=[X].
rota(A,C,[X|YZ]):- estrada(X,A,B), rota(B,C,YZ).

% ?- rota(a,f,R).