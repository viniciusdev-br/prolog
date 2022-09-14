/*exibe([]) :- nl.
exibe([X|Y]) :- write(X), exibe(Y). */

/*ultimo(L, X):- L=[X].
ultimo(L,U):- L=[X|Y], ultimo(Y, U). */

/*tam([],0).
tam([X|Y], T):- tam(Y, T1), T is T1 + 1. */

min([X],X).
min([X|Y], X):- min(Y,M), X =< M.
min([X|Y], M):- min(Y,M), X > M.

max([X],X).
max([X|Y], X):- max(Y,M), X >= M.
max([X|Y], M):- max(Y,M), X < M.
