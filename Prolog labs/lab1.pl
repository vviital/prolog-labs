isUnique([]).
isUnique([H|T]) :- 
	not(member(H, T)), 
	isUnique(T).

find(Places) :-
	Candidates = [azerbaijan, iceland, turkey, norway],
	Places = [Place1, Place2, Place3, Place4],
	member(Place1, Candidates),
	member(Place2, Candidates),
	member(Place3, Candidates),
	member(Place4, Candidates),
	Place1 \== azerbaijan,
	Place2 == iceland,
	Place1 \== turkey,
	Place4 == turkey,
	isUnique(Places).
	
first(X) :- find([X|_]).

c(azerbaijan).
c(iceland).
c(turkey).
c(norway).
p(first).
p(second).
p(third).
p(fourth).

haveplace(azerbaijan, P) :- p(P), P = first.
haveplace(iceland, P) :- p(P), not(P = second).
haveplace(turkey, P) :- p(P), P = first.
haveplace(turkey, P) :- p(P), not(P = fourth). 

solve(C1, C2, C3, C4, P1, P2, P3, P4) :-c(C1),c(C2), c(C3), c(C4), p(P1), p(P2), p(P3), p(P4),
	not(haveplace(C1, P1)),
	not(haveplace(C2, P2)),
	not(haveplace(C3, P3)),
	not(haveplace(C4, P4)),
	not(C1 == C2), 	not(C1 == C3), 	not(C1 == C4),
	not(C2 == C3), 	not(C2 == C4), 
	not(C3 == C4),
	not(P1 == P2), 	not(P1 == P3), 	not(P1 == P4),
	not(P2 == P3), 	not(P2 == P4), 
	not(P3 == P4).

solve(X, Y) :- solve(X, _, _, _, Y, _, _, _),!.

