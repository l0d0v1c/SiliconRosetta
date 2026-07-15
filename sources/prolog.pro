% 1. Comment

% 3. "Variables" = facts in the knowledge base
age(alice, 30).
age(bob, 25).
numbers([3, 1, 4, 1, 5]).

% 2. "Function" = predicate (a relation, not a directed computation)
greet(Name, Message) :-
    atom_concat('Hello, ', Name, Message).

% 5. Condition ( -> ; )
size(N) :-
    (  N > 3   -> writeln(big)
    ;  N =:= 3 -> writeln(medium)
    ;             writeln(small)
    ).

% 6. "Loop" = recursion over the structure of the list
double_all([]).
double_all([X|Rest]) :-
    D is X * 2,
    writeln(D),
    double_all(Rest).

% 8. Recursion: THE central mechanism (7. no while)
factorial(K, 1) :- K =< 1.
factorial(K, F) :-
    K > 1,
    K1 is K - 1,
    factorial(K1, F1),
    F is K * F1.

% 4+9. Main program, with error capture
main :-
    greet('World', M), writeln(M),
    size(5),
    numbers(L), double_all(L),
    factorial(5, F), writeln(F),
    catch( ( X is 10 / 0, writeln(X) ),
           _Error,
           writeln('cannot divide') ).

:- initialization(main).
