complexterm(X) :-
	nonvar(X),
	functor(X, _, A),
	A > 0.
	
:- op(500, xf, is_dead).

termtype1(X, atom) :- atom(X).
termtype1(X, integer) :- integer(X).
termtype1(X, float) :- float(X).
termtype1(X, number) :- number(X).
termtype1(X, atomic) :- atomic(X).
termtype1(X, var) :- var(X).
termtype1(X, nonvar) :- nonvar(X).
termtype1(X, complex) :- nonvar(X), functor(X, _, A), A > 0.

groundterm(X) :- not(complexterm(X)), nonvar(X).
groundterm(X) :- not(is_list(X)), complexterm(X), X =.. [_|T], groundterm(T).
groundterm(X) :- is_list(X), X = [H|T], groundterm(H), groundterm(T).