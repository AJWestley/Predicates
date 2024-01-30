% Checking for a prime

is_prime(2) :- !.
is_prime(N) :- N < 2, false, !.

is_prime(N) :- not(has_divisor(N, 2)).

has_divisor(N, P) :- 0 is N mod P, !.
has_divisor(N, P) :- N > P + 1, has_divisor(N, P + 1).

% Greatest common divisor
gcd(X, Y, Result) :- X >= Y, gcd_aux(X, Y, X, Result), !.
gcd(X, Y, Result) :- gcd_aux(X, Y, Y, Result).

gcd_aux(X, Y, Current, Result) :- mutual_divisor(X, Y, Current), Result is Current, !.
gcd_aux(X, Y, Current, Result) :- gcd_aux(X, Y, Current - 1, Result).

mutual_divisor(X, Y, D) :- 0 is X mod D, 0 is Y mod D.