# Prolog Predicates

A collection of useful predicates for prolog

## Implemented

### Lists

The list predicates can be loaded as follows:
```prolog
?- [list_predicates].
```

#### Concatenating Lists

Two lists can be combined using `concat`. (Duplicate of existing `append` predicate)

`concat` takes 3 arguments:
- The first list
- The second list
- The output

##### Example: (`concat`)
```prolog
?- concat([1, 2, 3], [7, 8, 9], X).
% X = [1, 2, 3, 7, 8, 9].
```

#### Adding Items to a List

Items can be added to the beginning of a list using `push_front` and to the end of a list using `push_back`.

`push_front` and `push_back` take 3 arguments:
- The item to add
- The list to be added to
- The output

##### Example: (`push_front`)
```prolog
?- push_front(69, [4, 2, 0], X).
% X = [69, 4, 2, 0].
```

##### Example: (`push_back`)
```prolog
?- push_back(69, [4, 2, 0], X).
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
?- del(2, [1, 2, 3], X).
% X = [1, 3]

?- del(2, [2, 1, 2, 3, 2]).
% X = [1, 2, 3, 2];
% X = [2, 1, 3, 2];
% X = [2, 1, 2, 3].
```

#### Checking for an Item in a List

Using `in` you can check if an item is contained inside a list

`in` takes 2 arguments:
- The item to look for
- The list to look through

##### Example: (`in`)
```prolog
?- in(4, [1, 4, 9, 16]).
% true.
```

#### Finding the Length of a List

The length of a list can be found with `size`. (Duplicate of the `length` predicate)

`size` takes 2 arguments:
- The list in question
- The output

##### Example: (`size`)
```prolog
?- size([1, 9, 423, 2], X).
% X = 4.
```

#### Removing Consecutive Duplicates

Lists with consecutive duplicates can be reduced with `compress`.

`compress` takes 2 arguments:
- The list to compress
- The output

##### Example: (`compress`)
```
?- compress([1, 1, 1, 2, 2, 3, 3, 4, 3], X).
% X = [1, 2, 3, 4, 3] .
```

#### Generating a Sequential List from a Range

A sequential list can be generated using `range`.

`range` takes 3 arguments:
- The start of the range
- The end of the range
- The output

##### Example: (`range`)
```prolog
?- range(1, 4, X).
% X = [1, 2, 3, 4].
```

#### Splitting a List

A list can be split into two sublists using `split`.

`split` takes 4 arguments:
- The original list
- The number of elements from the beginning to remove
- Left sublist output
- Right sublist output

##### Example: (`split`)
```prolog
?- split([1, 2, 3, 4, 5], 2, L, R).
% L = [1, 2],
% R = [3, 4, 5].
```

#### Shifting a List

A the contents of a list can be shifted left or right using `shift`.

`shift` takes 2 arguments:
- The original list
- The number of places to shift the contents
    - Positive = shift left
    - Negative = shift right
- The output

##### Examples: (`shift`)
```prolog
?- shift([1, 2, 3, 4], 1, X).
% X = [2, 3, 4, 1].

?- shift([1, 2, 3, 4], -1, X).
% X = [4, 1, 2, 3].
```