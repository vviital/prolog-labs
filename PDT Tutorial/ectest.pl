%happy(vincent).
%listens2Music(butch).
%playsAirGuitar(vincent) :- 
%	listens2Music(vincent),
%	happy(vincent).
%playsAirGuitar(butch) :- 
%	happy(butch).
%playsAirGuitar(butch) :- 
%	listens2Music(butch).


%woman(mia).
%woman(jody).
%woman(yolanda).

%loves(vincent, mia).
%loves(marsellus, mia).
%loves(pumpkin, honey_bunny).
%loves(honey_bynny, pumpkin).

%jealous(X, Y) :- loves(X, Z), loves(Y, _).

%goodDancer(marsellus).
%goodDancer(vincent).

%killer(butch).
%married(mia, marsellus).
%dead(zed).
%kill(marsellus, X) :- givemassage(X, mia).
%love(mia, X) :- goodDancer(X).
%eat(jules, X) :- nutritious(X) ; tasty(X).

%wizard(ron).
%hasWand(harry).
%quidditchPlayer(harry).
%wizard(X):- hasBroom(X), hasWand(X).
%hasBroom(X):- quidditchPlayer(X).


