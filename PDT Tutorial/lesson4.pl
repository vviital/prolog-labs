member(X, [Head|Tail]) :- X = Head.
member(X, [Head|Tail]) :- member(X, Tail).

a2b([], []).
a2b([Ha|Ta], [Hb|Tb]) :- Ha = a, Hb = b, a2b(Ta, Tb).

second(X, [_, X | _]).

swap12([X, Y | Z], [Y, X | Z]).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],[]).
listtran([InH|InT], [OutH|OutT]) :- tran(InH, OutH), listtran(InT, OutT).

twice([], []).
twice([A|T1], [A,A|T2]) :- twice(T1, T2).

combine1([],[],[]).
combine1([AH|AT], [BH|BT], [AH,BH|RES]) :- combine1(AT, BT, RES).

combine2([], [], []).
combine2([A|AT], [B|BT], [[A,B]|RES]) :- combine2(AT, BT, RES).

combine3([], [], []).
combine3([A|AA], [B|BB], [g(A,B)|RES]) :- combine3(AA, BB, RES).