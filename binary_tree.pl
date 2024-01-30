% Verifying if something is a binary tree
is_binary_tree(nil).

is_binary_tree(t(_, L, R)) :- is_binary_tree(L), is_binary_tree(R).