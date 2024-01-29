# Prolog Predicates

A collection of useful predicates for prolog

## Implemented

### Lists

The list predicates can be loaded as follows:
```prolog
[list_predicates].
```

#### Concatenating Lists

Two lists can be combined using `conc`.

`conc` takes 3 arguments:
- The first list
- The second list
- The output

##### Example: (`conc`)
```prolog
conc([1, 2, 3], [7, 8, 9], X).
% X = [1, 2, 3, 7, 8, 9]
```

#### Adding Items to a List

Items can be added to the beginning of a list using `prepend` and to the end of a list using `append`.

`append` takes 3 arguments:
- The item to add
- The list to be added to
- The output

##### Example: (`prepend`)
```prolog
prepend(69, [4, 2, 0], X).
% X = [69, 4, 2, 0].
```

##### Example: (`append`)
```prolog
append(69, [4, 2, 0], X).
% X = [4, 2, 0, 69].
```

#### Deleting Items from a List

Items can be deleted from a list using `del`.

`del` takes 3 arguments:
- The item to delete
- The list for the item to be deleted from
- The output

##### Examples: (`del`)
```prolog
del(2, [1, 2, 3], X).
% X = [1, 3]

del(2, [2, 1, 2, 3, 2]).
% X = [1, 2, 3, 2];
% X = [2, 1, 3, 2];
% X = [2, 1, 2, 3].
```