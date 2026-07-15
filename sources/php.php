<?php
// 2. Function
function greet($name) {
    return "Hello, " . $name;
}

// 3. Variables
$n = 5;
$world = "World";
$numbers = [3, 1, 4, 1, 5];
$ages = ["Alice" => 30, "Bob" => 25];

// 4. Output
echo greet($world), "\n";

// 5. Condition
if ($n > 3) {
    echo "big\n";
} elseif ($n == 3) {
    echo "medium\n";
} else {
    echo "small\n";
}

// 6. For
foreach ($numbers as $x) {
    echo $x * 2, "\n";
}

// 7. While
while ($n > 0) {
    $n = $n - 1;
}

// 8. Recursion
function factorial($k) {
    if ($k <= 1) return 1;
    return $k * factorial($k - 1);
}

// 9. Errors (PHP 8)
try {
    echo 10 / 0;
} catch (DivisionByZeroError $e) {
    echo "cannot divide\n";
}
