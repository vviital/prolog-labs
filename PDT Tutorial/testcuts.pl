p(1).
p(2).
p(3).
d(1).
d(2).
d(3).

find(X,Y) :- p(X),d(Y).

max(X,Y,Y) :- X =< Y,!.
max(X,Y,X).