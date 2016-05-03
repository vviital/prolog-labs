%child(anne,bridget).
%child(bridget,caroline).
%child(caroline,donna).
%child(donna,emily).



%descend(X,Y) :- child(X,Y).

%descend(X,Y) :- descend(Z,Y), child(X,Z).

%directlyin(olga, katarina).
%directlyin(natasha, olga).
%directlyin(irina, natasha).

%in(X, Y) :- directlyin(X, Y).
%in(X, Y) :- directlyin(X, Z), in(Z, Y).


%directTrain(saarbruecken,dudweiler).
%directTrain(forbach,saarbruecken).
%directTrain(freyming,forbach).
%directTrain(stAvold,freyming).
%directTrain(fahlquemont,stAvold).
%directTrain(metz,fahlquemont).
%directTrain(nancy,metz).

%travelFromTo(X, Y) :- directTrain(X, Y).
%travelFromTo(X, Y) :- directTrain(X, Z), travelFromTo(Z, Y).

%greater_than(X, 0) :- X \= 0.

%greater_than(succ(X), succ(Y)) :- greater_than(X, Y).

%swap(leaf(X), leaf(X)).
%swap(tree(L, R), tree(La, Ra)) :- swap(R, La), swap(L, Ra).
%swap(tree(X), tree(Y)) :- swap(X, Y).


%numeral(0).
%numeral(succ(X)) :- numeral(X).

connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

path(X, Y) :- connected(X, Y).
path(X, Y) :- connected(X, Z), path(Z, Y).

byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

%can(X, Y) :- byCar(X, Y).
%can(X, Y) :- byTrain(X, Y).
%can(X, Y) :- byPlane(X, Y).

%travel(X, Y, go(X, Y)) :- can(X, Y).
%travel(X, Y, go(X, Z, Path)) :- can(X, Z), travel(Z, Y, Path).

can(X, Y, car) :- byCar(X, Y).
can(X, Y, train) :- byTrain(X, Y).
can(X, Y, plane) :- byPlane(X, Y).

travel(X, Y, go(X, Y, Transport)) :- can(X, Y, Transport).
travel(X, Y, go(X, Y, Transport, Path)) :- can(X, Z, Transport), travel(Z, Y, Path).