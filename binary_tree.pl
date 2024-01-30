% Verifying if something is a binary tree
is_binary_tree(nil) :- !.

is_binary_tree(t(_, L, R)) :- is_binary_tree(L), is_binary_tree(R).

% Counting leaves
count_leaves(nil, 0) :- !.
count_leaves(t(_, nil, nil), 1) :- !.

count_leaves(t(_, L, R), Result) :- count_leaves(L, LCount), count_leaves(R, RCount), Result is LCount + RCount.

% Inorder traversal
inorder(nil, []) :- !.
inorder(t(X, nil, nil), [X]) :- !.

inorder(t(X, L, R), Total) :- inorder(L, Left), inorder(R, Right), append(Left, [X | Right], Total).

% Preorder traversal
preorder(nil, []) :- !.
preorder(t(X, nil, nil), [X]) :- !.

preorder(t(X, L, R), [X | Total]) :- preorder(L, Left), preorder(R, Right), append(Left, Right, Total).

% Postorder traversal
postorder(nil, []) :- !.
postorder(t(X, nil, nil), [X]) :- !.

postorder(t(X, L, R), Total) :- postorder(L, Left), postorder(R, Right), append(Left, Right, P), append(P, [X], Total).