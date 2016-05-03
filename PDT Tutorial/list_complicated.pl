flatten1(X, [X]) :- not(is_list(X)).
flatten1([], []).
flatten1([X|T], Res) :- 
	flatten1(X, Res1), 
	flatten1(T, Res2),
	append(Res1, Res2, Res). 
	
flatten2(X, [X], [X]) :- not(is_list(X)).



f([], R, R).
f([H|T], A, R) :-
    f(T, A, X),
    f(H, X, R).
f(X, A, [X|A]) :-
    not(is_list(X)).

f(L, R) :-
    f(L, [], R).