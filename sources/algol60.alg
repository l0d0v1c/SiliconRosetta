begin
    comment 1. Comment ;

    integer n;
    integer i;
    integer array numbers[1:5];

    comment 8. Recursion : ALGOL 60 is the first major
            language to explicitly allow it ;
    integer procedure factorial(k); value k; integer k;
    factorial := if k <= 1 then 1 else k * factorial(k - 1);

    n := 5;
    numbers[1] := 3; numbers[2] := 1; numbers[3] := 4;
    numbers[4] := 1; numbers[5] := 5;

    comment 4. Output (I/O depended on the compiler) ;
    outstring(1, "Hello, World");

    comment 5. Condition — and the if-expression already exists ;
    if n > 3 then outstring(1, "big")
    else if n = 3 then outstring(1, "medium")
    else outstring(1, "small");

    comment 6. For ;
    for i := 1 step 1 until 5 do
        outinteger(1, numbers[i] * 2);

    comment 7. While (a variant of for) ;
    for i := 0 while n > 0 do n := n - 1;

    outinteger(1, factorial(5));

    comment 9. No error handling : manual checks ;
end
