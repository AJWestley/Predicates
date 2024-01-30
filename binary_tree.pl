% Verifying if something is a binary tree
is_binary_tree(nil):-!.

is_binary_tree(t(_, L, R)) :- is_binary_tree(L), is_binary_tree(R).

% Counting leaves
count_leaves(nil, 0):-!.
count_leaves(t(_, nil, nil), 1):-!.

count_leaves(t(_, L, R), Result) :- count_leaves(L, LCount), count_leaves(R, RCount), Result is LCount + RCount.