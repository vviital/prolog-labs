prefix(X, L) :- append(X, _, L).

gethead([X|_], X).

naiverev([], []).
naiverev([H|A], Res) :- naiverev(A, X), append(X, [H] , Res). 

rev([H|A], Acc, Res) :- rev(A, [H|Acc], Res).
rev([], A, A).
rev(A, R) :- rev(A, [], R).

check(X) :- append(Y, Y, X).

palindrome(X) :- rev(X, R), X = R.

toptail([_|In], Out) :- rev(In, [_|T]), rev(T, Out).


last1(L, X) :- rev(L, [X|_]).

last2([X|[]], X).
last2([_|L], X) :- last2(L, X).


%    The Englishman lives in the red house.
%    The jaguar is the pet of the Spanish family.
%    The Japanese lives to the right of the snail keeper.
%    The snail keeper lives to the left of the blue house.

suf(L, R) :- append(_,R,L).
pref(L, R) :- append(R,_,L).

subl(L, Subl) :- suf(L,Suf), pref(Suf, Subl).

%N = japan,
%S = [house(blue, spanish, jaguar), house(red, english, snail), house(green, japan, zebra)] ;
%false.

%house(color, nationality, pet).
zebra(N, Streat) :- 
	Streat = [House1, House2, House3],
	member(house(red, _, _), Streat),
	member(house(blue,_, _), Streat),
	member(house(green,_,_), Streat),
	member(house(red, english,_), Streat),
	member(house(_,spanish, jaguar), Streat),
	subl(Streat, [house(_, japan, _), house(_, _, snail)]),
	subl(Streat, [house(_, _, snail), house(blue,_, _)]),
	member(house(_,N,zebra), Streat).
	
memb(X, L) :- append(_, [X|_], L). 

set([],[]).
set([X|InList], [X|OutList]) :- not(member(X, InList)), set(InList, OutList).
set([X|InList], OutList) :- member(X, InList), set(InList, OutList).

flatten([], []).
flatten(In, Out) :- 
