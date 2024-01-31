% Concatenating two lists - concat(L1, L2, Result)
concat([], L1, L1) :- !.

concat([Item | L1], L2, [Item | L3]) :- concat(L1, L2, L3).

% Adding an item - push_front(Item, List, Result)
push_front(Item, L, [Item | L]).

push_back(Item, L, R) :- append(L, [Item], R).

% Deleting an item  - del(Item, List, Result)
del(Item, [Item | Tail], Tail).

del(Item, [Head | Tail], [Head | Result]) :- del(Item, Tail, Result).

% Checking for item inside list - in(Item, List)
in(Item, [Item | _]) :- !.

in(Item, [_ | Tail]) :- in(Item, Tail).

% Finding the length of a list - size(List, Length)
size([], 0).

size([_ | Tail], Size) :- size(Tail, TailSize), Size is TailSize + 1.  

% Removing consecutive duplicates - compress(List, Result)
compress([], []) :- !.
compress([X], [X]) :- !.

compress([X, X | Tail], Result) :- compress([X | Tail], Result).
compress([X, Y | Tail], [X | TailComp]) :- X \= Y, compress([Y | Tail], TailComp).

% Generating a list of all numbers within a range - range(Start, End, Result)
range(X, X, [X]) :- !.

range(X, Y, [X | SubResult]) :- Y > X, Z is X + 1, range(Z, Y, SubResult).

% Splitting a list - split(Original, NumElements, Left, Right)
split(List, 0, [], List) :- !.

split([Head | Tail], Num, [Head | SubResult], End) :- SubNum is Num - 1, split(Tail, SubNum, SubResult, End).

% Cyclically shifting the elements of a list left or right
shift(List, 0, List).

shift(List, N, Result) :- N > 0, !, length(List, Len), P is N mod Len, shift_left(List, P, Result).
shift(List, N, Result) :- N < 0, length(List, Len), P is (Len + (N mod Len)) mod Len, shift_left(List, P, Result).
shift_left(List, N, Result) :- N > 0, split(List, N, Left, Right), append(Right, Left, Result). 

% Set intersection
intersection(_, [], []) :- !.

intersection(List, [Head | Tail], [Head | UTail]) :- member(Head, List), intersection(List, Tail, UTail), not(member(Head, UTail)), !.
intersection(List, [_ | Tail], Result) :- intersection(List, Tail, Result).

% Set union
union(X, [], X) :- !.

union(List, [Head | Tail], Result) :- union(List, Tail, Result), member(Head, Result), !.
union(List, [Head | Tail], [Head | TailResult]) :- union(List, Tail, TailResult).