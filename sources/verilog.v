// This describes hardware: the initial block is sequential
// (simulation), but a real design is massively parallel.

module silicon_rosetta;

  // 3. Variables = registers and wires
  integer n, i, d;
  integer numbers [0:4];

  // 2. "Function" (synthesizable as combinational logic)
  function integer double(input integer x);
    double = x * 2;
  endfunction

  // 8. Recursion: possible in simulation (automatic)
  function automatic integer factorial(input integer k);
    if (k <= 1) factorial = 1;
    else factorial = k * factorial(k - 1);
  endfunction

  initial begin
    n = 5;
    numbers[0]=3; numbers[1]=1; numbers[2]=4;
    numbers[3]=1; numbers[4]=5;

    // 4. Output (simulation)
    $display("Hello, World");

    // 5. Condition
    if (n > 3) $display("big");
    else if (n == 3) $display("medium");
    else $display("small");

    // 6. For
    for (i = 0; i < 5; i = i + 1)
      $display("%0d", double(numbers[i]));

    // 7. While
    while (n > 0) n = n - 1;

    $display("%0d", factorial(5));

    // 9. No exceptions: dividing by zero yields
    //    'x (unknown value), to be detected yourself
    d = 0;
    if (d == 0) $display("cannot divide");
  end

endmodule
