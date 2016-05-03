fun(X, Y) :- Y is (X + 3) * 2.

kai(3).
kai(4).
kai(a).
kai(5).

calc(X, Y) :- kai(X), Y is X * 3.

len([], 0).
len([_|A], C) :- len(A, T), C is T + 1.


alen([_|A], Acc, L) :- AccN is Acc + 1, alen(A, AccN, L).
alen([], X, X).

leng(A, L) :- alen(A, 0, L).


findMax([A|T], Acc, ANS) :- A < Acc, findMax(T, Acc, ANS).
findMax([A|T], Acc, ANS) :- A >= Acc, findMax(T, A, ANS).
findMax([], A, A).

findmax([A|T], ANS) :- findMax([A|T], A, ANS).

addone([], []).
addone([A|T], [Nval|ANS]) :- Nval is A + 1, addone(T, ANS). 

scalarMult(Num, [], []).
scalarMult(Num, [A|T], [Val|Res]) :- Val is Num * A,  scalarMult(Num, T, Res).


dot([A|AA], [B|BB], Acc, Result) :- NAcc is Acc + A * B, dot(AA, BB, NAcc, Result).
dot([], [], A, A).

dot(A, B, Result) :- dot(A, B, 0, Result).

fact(0, T, T).
fact(N, Acc, Res) :- N > 0, Nacc is Acc * N, NewN is N - 1, fact(NewN, Nacc, Res).
fact(N, Res) :- fact(N, 1, Res). 