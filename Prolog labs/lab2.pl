%task1(A,A,A,A) :- number(A).
myNumber(X) :- number(X), X > 0.
task1(A, B, C, D) :- myNumber(A), myNumber(B), myNumber(C), myNumber(D), A == B, A == C, A == D.

check(X,Y) :- number(X), number(Y), R is X * X + Y * Y, R < 1,!.
check(X, Y) :- number(X), number(Y), Y < 0, Y > -1, X < 1, X > -1.
task2(X,Y) :- not(check(X,Y)), not(check(X,Y)), X =< 2, X >= -2, Y =< 2, Y >= -1.
%task2(X,Y) :- number(X), number(Y), R is X * X + Y * Y, R =< 1,!.
%task2(X,Y) :- number(X), number(Y), Y =< 0, Y >= -1, X =< 1, X >= -1.

%read(A), read(B), read(C), read(D), task1(A, B, C, D).
%read(X), read(Y), task2(X,Y).