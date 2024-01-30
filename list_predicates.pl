% Concatenating two lists - concat(L1, L2, Result)
concat([], L1, L1).

concat([Item | L1], L2, [Item | L3]) :- concat(L1, L2, L3).

% Adding an item - prepend(Item, List, Result)
prepend(Item, L, [Item | L]).

append(Item, L, R) :- concat(L, [Item], R).

% Deleting an item  - del(Item, List, Result)
del(Item, [Item | Tail], Tail).

del(Item, [Head | Tail], [Head | Result]) :- del(Item, Tail, Result).

% Checking for item inside list - in(Item, List)
in(Item, [Item | _]):-!.

in(Item, [_ | Tail]) :- in(Item, Tail).

% Finding the length of a list - size(List, Length)
size([], 0).

size([_ | Tail], Size) :- size(Tail, TailSize), Size is TailSize + 1.  

% Removing consecutive duplicates - compress(List, Result)
compress([], []):-!.
compress([X], [X]):-!.

compress([X, X | Tail], Result) :- compress([X | Tail], Result).
compress([X, Y | Tail], [X | TailComp]) :- X \= Y, compress([Y | Tail], TailComp).

% Generating a list of all numbers within a range - range(Start, End, Result)
range(X, X, [X]):-!.

range(X, Y, [X | SubResult]) :- Y > X, Z is X + 1, range(Z, Y, SubResult).

% Splitting a list - split(Original, NumElements, Left, Right)
split(List, 0, [], List):-!.
split([Head | Tail], 1, [Head], Tail):-!.

split([Head | Tail], Num, [Head | SubResult], End) :- SubNum is Num - 1, split(Tail, SubNum, SubResult, End).