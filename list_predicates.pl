% Concatenating two lists
concat([], L1, L1).

concat([Item | L1], L2, [Item | L3]) :- concat(L1, L2, L3).

% Adding an item
prepend(Item, L, [Item | L]).

append(Item, L, R) :- concat(L, [Item], R).

% Deleting an item
del(Item, [Item | Tail], Tail).

del(Item, [Head | Tail], [Head | Result]) :- del(Item, Tail, Result).

% Checking for item inside list
in(Item, [Item | _]):-!.

in(Item, [_ | Tail]) :- in(Item, Tail).

% Finding the length of a list
size([], 0).

size([_ | Tail], Size) :- size(Tail, TailSize), Size is TailSize + 1.  

% Removing consecutive duplicates
compress([], []):-!.
compress([X], [X]):-!.

compress([X, X | Tail], Result) :- compress([X | Tail], Result).
compress([X, Y | Tail], [X | TailComp]) :- X \= Y, compress([Y | Tail], TailComp).

% Generating a list of all numbers within a range
range(X, X, [X]):-!.

range(X, Y, [X | SubResult]) :- Y > X, Z is X + 1, range(Z, Y, SubResult).