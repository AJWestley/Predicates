% Checking for a prime

is_prime(2) :- !.
is_prime(N) :- N < 2, false, !.

is_prime(N) :- not(has_divisor(N, 2)).

has_divisor(N, P) :- 0 is N mod P, !.
has_divisor(N, P) :- N > P + 1, has_divisor(N, P + 1).

% Greatest common divisor
gcd(X, 0, X) :- X > 0, !.
gcd(X, Y, Result) :- Y > 0, Z is X mod Y, gcd(Y, Z, Result).

% Power
pow(_, 0, 1) :- !.

pow(X, Y, Result) :- Y > 0, Z is Y - 1, pow(X, Z, SubResult), Result is X * SubResult.

% Co-Prime

coprime(X, Y) :- gcd(X, Y, GCD), GCD is 1.

% Euler Totient
totient(2, 1) :- !.

totient(X, Result) :- X > 2, coprime_count(X, X - 1, Result).

% coprime_count(X, Y, Result) :- coprime 