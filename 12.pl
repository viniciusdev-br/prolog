remU([_]. []):- !.
remU([X,Xs], [X|Lu]):- remU(Xs, Lu).

% 13
remU1(L,Lu):- append(Lu,[U], L).

% 14
contiguos([X,X|_]):- !.
contiguos([X|Xs]):- contiguos(Xs).

% 15
contiguos1(L):- append(_, [X,X|_], L).

% 16
duplicades([X|Xs]):- member(X,Xs)!.
duplicades([_|Xs]):- duplicades(Xs).

% 17
trocaPU(Lpu, Lup):- append([P|M],[U], Lpu),
                    append([U|M],[P], Lpu).

% 18
remDupl([X|Xs], Xd):- member(X,Xs), remDupl(Xs, Xd).
remDupl([X|Xs], [X|Xd]):- remDupl(Xs, Xd).

% 19
remDupl1([X|Xs], Xd):- member(X,Xs), select(X,Xs,Xo), remDupl1(Xo,Xd).
remDupl1([X|Xs], [X,Xd]):- remoDupl1(Xs, Xd).

% 20
remove(X,[X|Xs], Xr):- remove(X,Xs,Xr).
remove(X, [Y|Xs], [Y,Xr]):- X =/=, remove(X,Xs,Xr).


% 39

particiona([X,Y|XYs],[X|Xs], [Y,Ys]) :- particiona(XYs, Xs, Ys).
particiona([X], [X], []).
particiona([],[],[]).

merge1([X|Xs],[Y|Ys],[X|XYs]):-X@<Y,!,merge1(Xs, [Y|Ys],XYs).
merge1([X|Xs],[Y|Ys],[Y|XYs]):-X@>=Y,!,merge1([X|Xs], Ys,XYs).
merge1([],Ys,Ys):-!.
merge1(Xs,[],Xs):-!. 

%41
mergeSort([],[]):-!.
mergeSort([X],[X]):-!.
mergeSort(L,S):-particiona(L,X,Y),mergeSort(X,Xo),mergeSort(Y,Yo),merge1(Xo,Yo,S). 

%42
enezimo(N,[X|Xs],X):-N<=1.
enezimo(N,[X|Xs],Y):-N>1, N1 is N-1, enezimo(N1,Xs,Y). 

%43
compr2(L,C):-L=[],C=0. 
compr2(L,C):-L=[X|Xs],compr2(Xs,C1),C is C1+1. 

maxL0([X],X).
maxL0([X|Xs],X):-maxL0(Xs,M),X >M,!.
maxL0([X|Xs],M):-maxL0(Xs,M),X=<M,!.
%%
maxL00([X],X).
maxL00([X|Xs],M):-maxL00(Xs,M1),(X>M1,M=X,!; X=<M1,M=M1).
%%
maxL([X|Xs],M):-maxL(Xs,X,M).
maxL([],M,M).
maxL([X|Xs],ACC,M):- ACC>X,!,maxL(Xs,ACC,M).
maxL([X|Xs],_,M):- maxL(Xs,X,M).
%%
gL(L,N):-!,findall(X,(between(1,N,I),X is random(1000)),L). 




rsort(X,S):-sort(X,S1),reverse(S1,S).
rmsort(X,S):-msort(X,S1),reverse(S1,S). 

front(N,L,Lo):-length(Lo,N),append(Lo,_,L).
last(N,L,Lo):-length(Lo,N),append(_,Lo,L). 
