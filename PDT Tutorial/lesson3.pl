%is_digesting(X,Y) :- just_ate(X,Y).
%is_digesting(X,Y) :-
%        just_ate(X,Z),
%        is_digesting(Z,Y).

%just_ate(mosquito,blood(john)).
%just_ate(frog,mosquito).
%just_ate(stork,frog).

%rec(X, Y) :- fun(X, Y).
%rec(X, Y) :- fun(X, Z), rec(Z, Y).

%fun(x, y).
%fun(y, z).
%fun(z, t).

%child(anne,bridget).
%child(bridget,caroline).
%child(caroline,donna).
%child(donna,emily).

%numeral(0).

%numeral(succ(X)) :- numeral(X).

%descend(X, Y) :- child(X, Y).
%descend(X, Y) :- child(X, Z), descend(Z, Y).


%add(0, 0, Y).
%add(succ(X), Y, Z) :- Y \= 0, add(X, Y, succ(Z)).
%add(0, succ(X), Z) :- add(0, X, succ(Z)).

%add(0, Y, Y).
%add(succ(X), Y, succ(Z)) :- add(X, Y, Z).

%add(0, 0, Y).
%add(succ(X), Y, succ(Z)) :- write('X' = X), add(X, Y, Z).
%add(0, succ(Y), succ(Z)) :- add(0, Y, Z).

%add(0,Y,Y).
%add(succ(X),Y,succ(Z)) :-
%        add(X,Y,Z).

%child1(anne, bridget).
%child1(bridget, caroline).

%descend1(X, Y) :- child1(X, Y).
%descend1(X, Y) :- child1(X, Z),
%	descend1(Z, Y).