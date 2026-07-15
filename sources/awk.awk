# 2. Function
function greet(name) { return "Hello, " name }

# 8. Recursion
function factorial(k) {
    if (k <= 1) return 1
    return k * factorial(k - 1)
}

BEGIN {
    # 3. Variables (never declared; native associative arrays)
    n = 5
    world = "World"
    split("3 1 4 1 5", numbers, " ")
    ages["Alice"] = 30
    ages["Bob"] = 25

    # 4. Output
    print greet(world)

    # 5. Condition
    if (n > 3)       print "big"
    else if (n == 3) print "medium"
    else             print "small"

    # 6. For
    for (i = 1; i <= 5; i++) print numbers[i] * 2

    # 7. While
    while (n > 0) n = n - 1

    print factorial(5)

    # 9. Manual check (10/0 = fatal error)
    d = 0
    if (d == 0) print "cannot divide"
}

# AWK's true nature: one rule per input line —
# the loop is written nowhere:
# $1 > 100 { print "large value:", $0 }
