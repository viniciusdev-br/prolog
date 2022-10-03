%1)
comp3(L,C):- comp3(L,O,C).
comp3([X|X3], ACC, C):- comp3(Xs, ACC + 1, C).
comp3([], ACC, C):- C = ACC.

%2)
sum([], 0).
sum([x|xs], S + X):- sum(xs, s).
sumAcc(L,s):- sum3(L,O,S).
sum3([x|xs], Acc, S):- sum3(xs, Acc+x,s).
sum3([], Acc, s):- s = Acc.

%3)
membro(x,[x|_]).
membro(x,[_|x,]):- membro(x,xs).

%4)
append([],B1, Bs).
append([A|As], Bs, [A|AsBs]) :- append(As,Bs,AsBs).

%5)
membro2(x,L) :- append(_,[X|_], L).

%6)


%7)
ultimo([U], U):- !.
ultimo([_|X1], U) :- ultimo(Xs, U) :- ultimo(Xs, U).
