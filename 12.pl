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