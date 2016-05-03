make_list([], 0, _, _).
make_list([H|T], Need, L, R) :- Need > 0, NewNeed is Need - 1, make_list(T, NewNeed, L, R), random_between(L,R,H).


make_list() :- read(L), read(R), random_between(1, 10, N), make_list(X, N, L, R), print(X).

read_list([], 0).
read_list([H|T], N) :- NewN is N - 1, read(H), read_list(T, NewN).
read_list(X) :- read(N), read_list(X, N).

remove_even([], []).
remove_even([H|[]], [H]).
remove_even([H|[_|T]], Acc) :- remove_even(T, NAcc), Acc = [H|NAcc].

task(Y) :- read_list(X),!, remove_even(X, Y).