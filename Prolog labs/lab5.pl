readFromFile(String) :- 
	open('input.txt', read, Stream), 
	read_string(Stream, _, String),
	close(Stream).
writeToFile(String) :- 
	open('output.txt', write, Stream),
	write(Stream, String),
	close(Stream).
main :- readFromFile(X), writeToFile(X).
%7 variant
task7([], []).
task7([HIn|TIn],[HIn|[HIn|TOut]]) :-
	task7(TIn, TOut). 
task7 :- 
	readFromFile(String), 
	string_chars(String, Chars), 
	task7(Chars, NewChars),
	string_chars(NewString, NewChars),
	writeToFile(NewString).
%25 variant
task25([], [], _).
task25([HIn|TIn], TOut, HIn) :- 
	task25(TIn, TOut, HIn), !.
task25([HIn|TIn], [HIn|TOut], Last) :- 
	HIn \== Last,
	task25(TIn, TOut, HIn).
task25 :- 
	readFromFile(String),
	string_chars(String, Chars),
	task25(Chars, NewChars, -1),
	string_chars(NewString, NewChars),
	writeToFile(NewString).
%Special task
writeToFile([], [], _).
writeToFile([H1|T1], [H2|T2], Stream) :-
	write(Stream, H1),
	write(Stream, ' = '),
	write(Stream, H2),
	write(Stream, '\n'),
	writeToFile(T1, T2, Stream).
	
taskSpecial :-
	readFromFile(String),
	split_string(String, '|', '\n', StringArray),
	open('output.txt', write, Stream),
	writeToFile(['Нп/п', 'ФИО','Год поступления','Факультет','Шифр спец-ти'], StringArray, Stream),
	close(Stream).