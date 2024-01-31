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
power(_, 0, 1) :- !.

power(X, Y, Result) :- Y > 0, Z is Y - 1, power(X, Z, SubResult), Result is X * SubResult.

% Co-Prime
coprime(X, Y) :- gcd(X, Y, GCD), GCD is 1.

% Integer logarithm
log(Base, N, Exp) :- log_aux(Base, N, 0, Exp).

log_aux(Base, N, X, X) :- N < Base, !.
log_aux(Base, N, Current, Exp) :- N >= Base, N1 is N // Base, Next is Current + 1, log_aux(Base, N1, Next, Exp).

% Dot product
dot(A, B, Result) :- length(A, ALength), length(B, BLength), ALength = BLength, dot_aux(A, B, Result).

dot_aux([A], [B], A * B) :- !.
dot_aux([AHead | ATail], [BHead | BTail], Result) :- dot_aux(ATail, BTail, TailResult), Result is (AHead * BHead) + TailResult.