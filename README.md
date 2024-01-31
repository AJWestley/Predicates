# Prolog Predicates

A collection of useful predicates for prolog

## Implemented

### Lists (`list.pl`)

The list predicates can be loaded as follows:
```prolog
?- [list_predicates].
```

#### Concatenating Lists

Two lists can be combined using `concat`. (Duplicate of existing `append` predicate)

`concat` takes 3 arguments:
- The first list
- The second list
- Output

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
- Output

##### Example: (`push_front`, `push_back`)
```prolog
?- push_front(69, [4, 2, 0], X).
% X = [69, 4, 2, 0].

?- push_back(69, [4, 2, 0], X).
% X = [4, 2, 0, 69].
```

#### Deleting Items from a List

Items can be deleted from a list using `del`.

`del` takes 3 arguments:
- The item to delete
- The list for the item to be deleted from
- Output

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
- Output

##### Example: (`size`)
```prolog
?- size([1, 9, 423, 2], X).
% X = 4.
```

#### Last Item of a List

The last item of a list can be found with `last_item`.

`last_item` takes 2 arguments:
- The list to evaluate
- Output

##### Example: (`last_item`)
```prolog
?- last_item([a, c, r, g, q], X). 
% X = q.
```

#### Removing Consecutive Duplicates

Lists with consecutive duplicates can be reduced with `compress`.

`compress` takes 2 arguments:
- The list to compress
- Output

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
- Output

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
- Output

##### Examples: (`shift`)
```prolog
?- shift([1, 2, 3, 4], 1, X).
% X = [2, 3, 4, 1].

?- shift([1, 2, 3, 4], -1, X).
% X = [4, 1, 2, 3].
```

#### Check a List is Sorted

The `is_sorted` predicate checks if a list is sorted.

`is_sorted` takes 1 argument:
- The list in question

##### Example: (`is_sorted`)
```prolog
?- is_sorted([4, 4, 3]).
% true.
```

#### Combining Sets

The union and intersection of two sets can be found using `union` and `intersection` respectively.

`union` and `intersection` take 3 arguments:
- The first set
- The second set
- Output

##### Example: (`union`, `intersection`)
```prolog
?- union([a, c, e], [a, b, c], X).
% X = [b, a, c, e].

?- intersection([a, c, e], [a, b, c], X).
% X = [a, c].
```

### Binary Trees (`binary_tree.pl`)

#### Verifying a Binary Tree

The `is_binary_tree` predicate verifies if a given term is a binary tree or not.

`is_binary_tree` takes 1 argument:
- The term to verify

##### Example: (`is_binary_tree`)
```prolog
?- is_binary_tree(t(a, t(b, nil, nil), t(c, nil, t(d, nil, nil)))).
% true.

?- is_binary_tree(t(a, t(b, nil, nil))).
% false.
```

#### Counting the Leaves in a Tree

The number of leaves in a binary tree can be counted with `count_leaves`.

`count_leaves` takes 2 arguments:
- The binary tree to count
- Output

##### Example: (`count_leaves`)
```prolog
?- count_leaves(t(a, t(b, t(s, nil, nil), t(t, nil, nil)), t(c, nil, nil)), X).
% X = 3.
```

#### Traversing a Binary Tree

A binary tree can be traversed with `inorder`, `preorder` or `postorder`.

`inorder`, `preorder` and `postorder` all take 2 arguments:
- The tree to traverse
- Output

##### Examples: (`inorder`, `preorder`, `postorder`)
```prolog
?- inorder(t(a, t(b, nil, nil), t(c, nil, nil)), S).
% S = [b, a, c].

?- preorder(t(a, t(b, nil, nil), t(c, nil, nil)), S).
% S = [a, b, c].

?- postorder(t(a, t(b, nil, nil), t(c, nil, nil)), S).
% S = [b, c, a].
```

### Maths (`maths.pl`)

#### Checking That a Number is Prime

The `is_prime` predicate can determine whether or not a number is prime.

`is_prime` takes 1 argument:
- The number to check

##### Example: (`is_prime`)
```prolog
?- is_prime(17)
% true.
```

#### Finding the Greatest Common Divisor

The GCD of 2 numbers can be found with the `gcd` predicate.

`gcd` takes 3 arguments:
- The first number
- The second number
- Output

##### Example: (`gcd`)
```prolog
?- gcd(42, 285, X).
% X = 3.
```

#### Exponents

The `pow` predicate can be used to calculate X^Y.

`pow` takes 3 arguments:
- The base
- The exponent
- Output

##### Example: (`pow`)
```prolog
?- pow(2, 4, X).
% X = 16.
```

#### Co-Primes

The `coprime` predicate can be used to find if two numbers are co-prime.

`coprime` takes 2 arguments:
- The first number
- The second number

##### Example: (`coprime`)
```prolog
?- coprime(8, 15).
% true.
```

#### Integer Logarithm

The floor value of a logarithm can be determined with the `log` predicate.

`log` takes 3 arguments:
- The base
- The argument of the log
- Output

##### Example: (`log`)
```prolog
?- log(2, 16, X).
% X = 4.
```

#### Dot Product

The dot product of two vectors can be calulated with the `dot` predicate.

`dot` takes 3 arguments:
- The first vector
- The second vector
- Output

##### Example: (`dot`)
```prolog
?- dot([3, 2, 0], [5, 2, 3], X).
% X = 19.
```