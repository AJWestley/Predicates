% Concatenating two lists
conc([], L1, L1).
conc([Item | L1], L2, [Item | L3]) :- conc(L1, L2, L3).

% Adding an item
prepend(Item, L, [Item | L]).
append(Item, L, R) :- conc(L, [Item], R).

% Deleting an item
del(Item, [Item | Tail], Tail).
del(Item, [Head | Tail], [Head | Result]) :- del(Item, Tail, Result).

% Checking for item inside list
in(Item, [Item | Tail]).
in(Item, [Head | Tail]) :- in(Item, Tail).