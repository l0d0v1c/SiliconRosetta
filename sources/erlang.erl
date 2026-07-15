% 1. Comment
-module(silicon_rosetta).
-export([main/0]).

% 2. Function
greet(Name) -> "Hello, " ++ Name.

% 8. Recursion: THE mechanism (clauses with guards)
factorial(K) when K =< 1 -> 1;
factorial(K) -> K * factorial(K - 1).

% 7. "While" is done by recursion
countdown(0) -> ok;
countdown(N) -> countdown(N - 1).

main() ->
    % 3. Variables: SINGLE assignment (N = 6 later would be an error)
    N = 5,
    World = "World",
    Numbers = [3, 1, 4, 1, 5],
    Ages = #{"Alice" => 30, "Bob" => 25},
    _ = Ages,

    % 4. Output
    io:format("~s~n", [greet(World)]),

    % 5. Condition
    if
        N > 3   -> io:format("big~n");
        N =:= 3 -> io:format("medium~n");
        true    -> io:format("small~n")
    end,

    % 6. For: apply a function to the list
    lists:foreach(fun(X) -> io:format("~p~n", [X * 2]) end, Numbers),

    countdown(N),
    io:format("~p~n", [factorial(5)]),

    % 9. try/catch exists, but the philosophy is
    %    "let it crash" + process supervision
    try
        io:format("~p~n", [10 div 0])
    catch
        error:badarith -> io:format("cannot divide~n")
    end.
