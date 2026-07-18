# Silicon Rosetta

*One minimal program, nine universal concepts, translated into 36 languages.*

The **Silicon Rosetta** is a "Hello World" extended to cover the core grammar of any programming language. The nine blocks: **comment, function, variables/types, output, condition, for loop, while loop, recursion, error handling**. Translating it into a new language immediately exposes its syntax, its typing discipline, and its philosophy.

---

## Reference pseudo-code

```
# 1. Comment

# 2. Function (with parameter and return value)
function greet(name):
    return "Hello, " + name

# 3. Variables and types
integer n       = 5
text    world   = "World"
list    numbers = [3, 1, 4, 1, 5]
dict    ages    = {"Alice": 30, "Bob": 25}

# 4. Output
print(greet(world))

# 5. Condition
if n > 3:      print("big")
else if n == 3: print("medium")
else:           print("small")

# 6. Bounded loop
for each x in numbers:
    print(x * 2)

# 7. Conditional loop
while n > 0:
    n = n - 1

# 8. Recursion
function factorial(k):
    if k <= 1: return 1
    return k * factorial(k - 1)

# 9. Error handling
try:
    print(10 / 0)
catch error:
    print("cannot divide")
```

---

## Python

*The closest to pseudo-code: significant indentation, inferred typing, native dictionaries.*

```python
# 2. Function
def greet(name):
    return "Hello, " + name

# 3. Variables (inferred types)
n = 5
world = "World"
numbers = [3, 1, 4, 1, 5]
ages = {"Alice": 30, "Bob": 25}

# 4. Output
print(greet(world))

# 5. Condition
if n > 3:
    print("big")
elif n == 3:
    print("medium")
else:
    print("small")

# 6. For
for x in numbers:
    print(x * 2)

# 7. While
while n > 0:
    n = n - 1

# 8. Recursion
def factorial(k):
    if k <= 1:
        return 1
    return k * factorial(k - 1)

# 9. Errors
try:
    print(10 / 0)
except ZeroDivisionError:
    print("cannot divide")
```

---

## JavaScript

*Braces and semicolons. Famous trap: `10 / 0` does NOT raise an error — it yields `Infinity`. You must throw the error yourself.*

```javascript
// 2. Function
function greet(name) {
  return "Hello, " + name;
}

// 3. Variables (const = constant, let = mutable)
let n = 5;
const world = "World";
const numbers = [3, 1, 4, 1, 5];
const ages = { Alice: 30, Bob: 25 };

// 4. Output
console.log(greet(world));

// 5. Condition
if (n > 3) {
  console.log("big");
} else if (n === 3) {
  console.log("medium");
} else {
  console.log("small");
}

// 6. For
for (const x of numbers) {
  console.log(x * 2);
}

// 7. While
while (n > 0) {
  n = n - 1;
}

// 8. Recursion
function factorial(k) {
  if (k <= 1) return 1;
  return k * factorial(k - 1);
}

// 9. Errors (10/0 is Infinity: we must throw ourselves)
function divide(a, b) {
  if (b === 0) throw new Error("cannot divide");
  return a / b;
}
try {
  console.log(divide(10, 0));
} catch (e) {
  console.log(e.message);
}
```

---

## C

*The machine laid bare: explicit typing, no native strings, no dictionary, no exceptions — everything is checked by hand.*

```c
#include <stdio.h>

/* 2. Function */
void greet(char *dest, const char *name) {
    sprintf(dest, "Hello, %s", name);
}

/* 8. Recursion */
int factorial(int k) {
    if (k <= 1) return 1;
    return k * factorial(k - 1);
}

int main(void) {
    /* 3. Variables: explicit types, no native dict */
    int n = 5;
    const char *world = "World";
    int numbers[] = {3, 1, 4, 1, 5};
    char message[64];

    /* 4. Output */
    greet(message, world);
    printf("%s\n", message);

    /* 5. Condition */
    if (n > 3)       printf("big\n");
    else if (n == 3) printf("medium\n");
    else             printf("small\n");

    /* 6. For (by index: no for-each) */
    for (int i = 0; i < 5; i++)
        printf("%d\n", numbers[i] * 2);

    /* 7. While */
    while (n > 0)
        n = n - 1;

    /* 9. No exceptions: manual check */
    int d = 0;
    if (d == 0) printf("cannot divide\n");
    else        printf("%d\n", 10 / d);

    return 0;
}
```

---

## Java

*Everything is a class: even this small program requires the `public static void main` ceremony. Strong typing, built-in exceptions.*

```java
import java.util.*;

public class SiliconRosetta {
    // 2. Function (static method)
    static String greet(String name) {
        return "Hello, " + name;
    }

    // 8. Recursion
    static int factorial(int k) {
        if (k <= 1) return 1;
        return k * factorial(k - 1);
    }

    public static void main(String[] args) {
        // 3. Typed variables
        int n = 5;
        String world = "World";
        int[] numbers = {3, 1, 4, 1, 5};
        Map<String, Integer> ages = Map.of("Alice", 30, "Bob", 25);

        // 4. Output
        System.out.println(greet(world));

        // 5. Condition
        if (n > 3) System.out.println("big");
        else if (n == 3) System.out.println("medium");
        else System.out.println("small");

        // 6. For-each
        for (int x : numbers) System.out.println(x * 2);

        // 7. While
        while (n > 0) n = n - 1;

        // 9. Exceptions
        try {
            System.out.println(10 / 0);
        } catch (ArithmeticException e) {
            System.out.println("cannot divide");
        }
    }
}
```

---

## Kotlin

*Java stripped of its ceremony: type inference, expression-bodied functions, the generalized `when`.*

```kotlin
// 2. Function (expression body)
fun greet(name: String) = "Hello, $name"

// 8. Recursion
fun factorial(k: Int): Int = if (k <= 1) 1 else k * factorial(k - 1)

fun main() {
    // 3. Variables: val (constant) / var (mutable), inferred types
    var n = 5
    val world = "World"
    val numbers = listOf(3, 1, 4, 1, 5)
    val ages = mapOf("Alice" to 30, "Bob" to 25)

    // 4. Output
    println(greet(world))

    // 5. Condition (when = generalized switch)
    when {
        n > 3  -> println("big")
        n == 3 -> println("medium")
        else   -> println("small")
    }

    // 6. For
    for (x in numbers) println(x * 2)

    // 7. While
    while (n > 0) n -= 1

    // 9. Exceptions (inherited from the JVM)
    try {
        println(10 / 0)
    } catch (e: ArithmeticException) {
        println("cannot divide")
    }
}
```

---

## Go

*Deliberate minimalism: a single loop keyword (`for`), no exceptions — errors are ordinary returned values.*

```go
package main

import "fmt"

// 2. Function
func greet(name string) string {
	return "Hello, " + name
}

// 8. Recursion
func factorial(k int) int {
	if k <= 1 {
		return 1
	}
	return k * factorial(k-1)
}

// 9. The error is an ordinary return value
func divide(a, b int) (int, error) {
	if b == 0 {
		return 0, fmt.Errorf("division by zero")
	}
	return a / b, nil
}

func main() {
	// 3. Variables (types inferred with :=)
	n := 5
	world := "World"
	numbers := []int{3, 1, 4, 1, 5}
	ages := map[string]int{"Alice": 30, "Bob": 25}
	_ = ages

	// 4. Output
	fmt.Println(greet(world))

	// 5. Condition
	if n > 3 {
		fmt.Println("big")
	} else if n == 3 {
		fmt.Println("medium")
	} else {
		fmt.Println("small")
	}

	// 6. For (the ONLY loop in the language)
	for _, x := range numbers {
		fmt.Println(x * 2)
	}

	// 7. "While" = for with a lone condition
	for n > 0 {
		n = n - 1
	}

	// 9. Error handling by value
	if result, err := divide(10, 0); err != nil {
		fmt.Println("cannot divide")
	} else {
		fmt.Println(result)
	}
}
```

---

## Rust

*Variables immutable by default, no exceptions: errors live in the types (`Option`, `Result`) and the compiler forces you to handle them.*

```rust
use std::collections::HashMap;

// 2. Function
fn greet(name: &str) -> String {
    format!("Hello, {}", name)
}

// 8. Recursion
fn factorial(k: u64) -> u64 {
    if k <= 1 { 1 } else { k * factorial(k - 1) }
}

fn main() {
    // 3. Variables: immutable by default, explicit `mut`
    let mut n = 5;
    let world = "World";
    let numbers = vec![3, 1, 4, 1, 5];
    let ages = HashMap::from([("Alice", 30), ("Bob", 25)]);
    let _ = ages;

    // 4. Output
    println!("{}", greet(world));

    // 5. Condition (it is an expression)
    if n > 3 {
        println!("big");
    } else if n == 3 {
        println!("medium");
    } else {
        println!("small");
    }

    // 6. For
    for x in &numbers {
        println!("{}", x * 2);
    }

    // 7. While
    while n > 0 {
        n -= 1;
    }

    // 9. No exceptions: Option + match
    match 10_i32.checked_div(0) {
        Some(r) => println!("{}", r),
        None => println!("cannot divide"),
    }
}
```

---

## Swift

*`let`/`var`, safety by default; failing functions must be marked `throws` and called with `try`.*

```swift
// 2. Function
func greet(_ name: String) -> String {
    return "Hello, " + name
}

// 3. Variables: let (constant) / var (mutable)
var n = 5
let world = "World"
let numbers = [3, 1, 4, 1, 5]
let ages = ["Alice": 30, "Bob": 25]

// 4. Output
print(greet(world))

// 5. Condition
if n > 3 {
    print("big")
} else if n == 3 {
    print("medium")
} else {
    print("small")
}

// 6. For
for x in numbers {
    print(x * 2)
}

// 7. While
while n > 0 {
    n -= 1
}

// 8. Recursion
func factorial(_ k: Int) -> Int {
    if k <= 1 { return 1 }
    return k * factorial(k - 1)
}

// 9. Errors: throws + do/try/catch
enum MathError: Error { case divisionByZero }

func divide(_ a: Int, _ b: Int) throws -> Int {
    guard b != 0 else { throw MathError.divisionByZero }
    return a / b
}

do {
    print(try divide(10, 0))
} catch {
    print("cannot divide")
}
```

---

## Ruby

*Everything is an object, everything is an expression: the last computed value is the return value. Idiomatic loops are iterators with blocks.*

```ruby
# 2. Function (last computed value = return value)
def greet(name)
  "Hello, #{name}"
end

# 3. Variables
n = 5
world = "World"
numbers = [3, 1, 4, 1, 5]
ages = { "Alice" => 30, "Bob" => 25 }

# 4. Output
puts greet(world)

# 5. Condition
if n > 3
  puts "big"
elsif n == 3
  puts "medium"
else
  puts "small"
end

# 6. For (idiomatic: iterator + block)
numbers.each do |x|
  puts x * 2
end

# 7. While
while n > 0
  n -= 1
end

# 8. Recursion
def factorial(k)
  return 1 if k <= 1
  k * factorial(k - 1)
end

# 9. Errors
begin
  puts 10 / 0
rescue ZeroDivisionError
  puts "cannot divide"
end
```

---

## PHP

*The `$` sigil on every variable; the associative array is the universal structure (list and dict at once).*

```php
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
```

---

## Perl

*Sigils carry the type: `$` scalar, `@` list, `%` hash. Errors via `eval` plus the special variable `$@`.*

```perl
use strict;
use warnings;

# 2. Function
sub greet {
    my ($name) = @_;
    return "Hello, $name";
}

# 3. Variables: the sigil tells the structure
my $n = 5;
my $world = "World";
my @numbers = (3, 1, 4, 1, 5);
my %ages = (Alice => 30, Bob => 25);

# 4. Output
print greet($world), "\n";

# 5. Condition
if ($n > 3) {
    print "big\n";
} elsif ($n == 3) {
    print "medium\n";
} else {
    print "small\n";
}

# 6. For
for my $x (@numbers) {
    print $x * 2, "\n";
}

# 7. While
while ($n > 0) {
    $n = $n - 1;
}

# 8. Recursion
sub factorial {
    my ($k) = @_;
    return 1 if $k <= 1;
    return $k * factorial($k - 1);
}

# 9. Errors: eval captures, $@ holds the error
my $r = eval { 10 / 0 };
print "cannot divide\n" if $@;
```

---

## Lua

*A single data structure: the table, serving as both list and dictionary. Errors via the protected call `pcall`.*

```lua
-- 2. Function
local function greet(name)
  return "Hello, " .. name
end

-- 3. Variables: the table is THE single structure
local n = 5
local world = "World"
local numbers = {3, 1, 4, 1, 5}
local ages = {Alice = 30, Bob = 25}

-- 4. Output
print(greet(world))

-- 5. Condition
if n > 3 then
  print("big")
elseif n == 3 then
  print("medium")
else
  print("small")
end

-- 6. For
for _, x in ipairs(numbers) do
  print(x * 2)
end

-- 7. While
while n > 0 do
  n = n - 1
end

-- 8. Recursion
local function factorial(k)
  if k <= 1 then return 1 end
  return k * factorial(k - 1)
end

-- 9. Errors: pcall (protected call)
local function divide(a, b)
  if b == 0 then error("division by zero") end
  return a / b
end

local ok, res = pcall(divide, 10, 0)
if ok then print(res) else print("cannot divide") end
```

---

## Bash

*Everything is text and commands: arithmetic needs `(( ))`, errors are exit codes, not exceptions.*

```bash
#!/usr/bin/env bash

# 2. Function
greet() {
  echo "Hello, $1"
}

# 3. Variables (all text; associative arrays since bash 4)
n=5
world="World"
numbers=(3 1 4 1 5)
declare -A ages=([Alice]=30 [Bob]=25)

# 4. Output
greet "$world"

# 5. Condition
if (( n > 3 )); then
  echo "big"
elif (( n == 3 )); then
  echo "medium"
else
  echo "small"
fi

# 6. For
for x in "${numbers[@]}"; do
  echo $(( x * 2 ))
done

# 7. While
while (( n > 0 )); do
  n=$(( n - 1 ))
done

# 8. Recursion (via command substitution)
factorial() {
  local k=$1
  if (( k <= 1 )); then echo 1; return; fi
  echo $(( k * $(factorial $(( k - 1 ))) ))
}

# 9. No exceptions: exit codes and checks
d=0
if (( d == 0 )); then
  echo "cannot divide"
else
  echo $(( 10 / d ))
fi
```

---

## Pascal

*The teaching ancestor: declarations separated from code, `begin...end`, `:=` assignment. No native dictionary.*

```pascal
program SiliconRosetta;

{ 2. Function }
function Greet(name: string): string;
begin
  Greet := 'Hello, ' + name;
end;

{ 8. Recursion }
function Factorial(k: integer): integer;
begin
  if k <= 1 then
    Factorial := 1
  else
    Factorial := k * Factorial(k - 1);
end;

var
  n, i, d: integer;
  world: string;
  numbers: array[1..5] of integer = (3, 1, 4, 1, 5);
  { no dictionary in standard Pascal }
begin
  n := 5;
  world := 'World';

  { 4. Output }
  writeln(Greet(world));

  { 5. Condition }
  if n > 3 then
    writeln('big')
  else if n = 3 then
    writeln('medium')
  else
    writeln('small');

  { 6. For }
  for i := 1 to 5 do
    writeln(numbers[i] * 2);

  { 7. While }
  while n > 0 do
    n := n - 1;

  { 9. Manual check (try..except exists in Free Pascal) }
  d := 0;
  if d = 0 then
    writeln('cannot divide')
  else
    writeln(10 div d);
end.
```

---

## Haskell

*Purely functional: no mutation, no while — everything is recursion and expressions. The error becomes a type (`Maybe`).*

```haskell
import qualified Data.Map as Map

-- 2. Function (pure, explicit type signature)
greet :: String -> String
greet name = "Hello, " ++ name

-- 8. Recursion: THE way to repeat (no while!)
factorial :: Integer -> Integer
factorial k
  | k <= 1    = 1
  | otherwise = k * factorial (k - 1)

-- 7. "While" is simulated by recursion
countdown :: Int -> Int
countdown 0 = 0
countdown n = countdown (n - 1)

-- 9. No exceptions: failure is a type (Maybe)
divide :: Int -> Int -> Maybe Int
divide _ 0 = Nothing
divide a b = Just (a `div` b)

main :: IO ()
main = do
  -- 3. Variables: immutable, inferred types
  let n = 5 :: Int
      world = "World"
      numbers = [3, 1, 4, 1, 5]
      ages = Map.fromList [("Alice", 30), ("Bob", 25)]

  -- 4. Output
  putStrLn (greet world)

  -- 5. Condition (expression, never a statement)
  putStrLn (if n > 3 then "big"
            else if n == 3 then "medium"
            else "small")

  -- 6. "For": apply a function to every element
  mapM_ (print . (* 2)) numbers

  -- 9. Handle the error case by pattern matching
  case divide 10 0 of
    Just r  -> print r
    Nothing -> putStrLn "cannot divide"
```

---

## Common Lisp

*All parentheses and prefix notation: the code IS the syntax tree. `cond` replaces if/elif/else; errors are "conditions".*

```lisp
;; 2. Function
(defun greet (name)
  (concatenate 'string "Hello, " name))

;; 3. Global variables (naming convention *...*)
(defparameter *n* 5)
(defparameter *world* "World")
(defparameter *numbers* '(3 1 4 1 5))
(defparameter *ages* '(("Alice" . 30) ("Bob" . 25)))  ; association list

;; 4. Output
(format t "~a~%" (greet *world*))

;; 5. Condition
(cond ((> *n* 3) (format t "big~%"))
      ((= *n* 3) (format t "medium~%"))
      (t         (format t "small~%")))

;; 6. For
(dolist (x *numbers*)
  (format t "~a~%" (* x 2)))

;; 7. While
(loop while (> *n* 0)
      do (decf *n*))

;; 8. Recursion (Lisp's natural style)
(defun factorial (k)
  (if (<= k 1)
      1
      (* k (factorial (- k 1)))))

;; 9. Errors (the "condition" system)
(handler-case
    (format t "~a~%" (/ 10 0))
  (division-by-zero ()
    (format t "cannot divide~%")))
```

---

## Fortran

*The elder (1957), still alive in scientific computing: blocks closed with `end`, arrays as first-class citizens.*

```fortran
program silicon_rosetta
  implicit none
  integer :: n, i, d
  character(len=20) :: world
  integer, dimension(5) :: numbers = (/ 3, 1, 4, 1, 5 /)
  ! no native dictionary

  n = 5
  world = "World"

  ! 4. Output
  print *, "Hello, ", trim(world)

  ! 5. Condition
  if (n > 3) then
     print *, "big"
  else if (n == 3) then
     print *, "medium"
  else
     print *, "small"
  end if

  ! 6. For
  do i = 1, 5
     print *, numbers(i) * 2
  end do

  ! 7. While
  do while (n > 0)
     n = n - 1
  end do

  ! 8. Recursion
  print *, factorial(5)

  ! 9. Manual check
  d = 0
  if (d == 0) then
     print *, "cannot divide"
  end if

contains
  ! 2. Function (recursion must be declared explicitly)
  recursive function factorial(k) result(res)
    integer, intent(in) :: k
    integer :: res
    if (k <= 1) then
       res = 1
    else
       res = k * factorial(k - 1)
    end if
  end function factorial
end program silicon_rosetta
```

---

## BASIC (classic, line-numbered)

*The language of 1980s home computers: GOTO is king, "functions" take no parameters (GOSUB), and — tellingly — recursion is impossible (no stack of local variables).*

```basic
10 REM 1. COMMENT
20 REM 3. VARIABLES ($ = string)
30 N = 5
40 WORLD$ = "World"
50 DIM NUMBERS(5)
60 FOR I = 1 TO 5: READ NUMBERS(I): NEXT I
70 DATA 3, 1, 4, 1, 5
80 REM 2+4. "FUNCTION" = GOSUB (no parameters, no return value!)
90 NAME$ = WORLD$: GOSUB 500
100 REM 5. CONDITION
110 IF N > 3 THEN PRINT "BIG": GOTO 150
120 IF N = 3 THEN PRINT "MEDIUM": GOTO 150
130 PRINT "SMALL"
150 REM 6. FOR LOOP
160 FOR I = 1 TO 5
170 PRINT NUMBERS(I) * 2
180 NEXT I
190 REM 7. WHILE (simulated with IF + GOTO)
200 IF N <= 0 THEN 240
210 N = N - 1
220 GOTO 200
240 REM 8. RECURSION IMPOSSIBLE (global variables,
250 REM    no stack): iterative version required
260 F = 1: FOR K = 2 TO 5: F = F * K: NEXT K
270 PRINT F
280 REM 9. ERRORS
290 ON ERROR GOTO 600
300 PRINT 10 / 0
310 END
500 PRINT "HELLO, "; NAME$: RETURN
600 PRINT "CANNOT DIVIDE": RESUME 310
```

---

## Ada

*Designed for critical systems (avionics, rail): the strongest typing in this collection, deliberate verbosity — everything explicit, nothing implicit.*

```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Silicon_Rosetta is

   --  2. Function
   function Greet (Name : String) return String is
   begin
      return "Hello, " & Name;
   end Greet;

   --  8. Recursion
   function Factorial (K : Integer) return Integer is
   begin
      if K <= 1 then
         return 1;
      else
         return K * Factorial (K - 1);
      end if;
   end Factorial;

   --  3. Variables: very strong typing (no standard dict)
   N       : Integer := 5;
   World   : constant String := "World";
   Numbers : array (1 .. 5) of Integer := (3, 1, 4, 1, 5);
   D       : Integer := 0;

begin
   --  4. Output
   Put_Line (Greet (World));

   --  5. Condition
   if N > 3 then
      Put_Line ("big");
   elsif N = 3 then
      Put_Line ("medium");
   else
      Put_Line ("small");
   end if;

   --  6. For
   for X of Numbers loop
      Put_Line (Integer'Image (X * 2));
   end loop;

   --  7. While
   while N > 0 loop
      N := N - 1;
   end loop;

   Put_Line (Integer'Image (Factorial (5)));

   --  9. Exceptions (raised automatically by the language)
   begin
      Put_Line (Integer'Image (10 / D));
   exception
      when Constraint_Error =>
         Put_Line ("cannot divide");
   end;
end Silicon_Rosetta;
```

---

## Forth

*The conceptual shock: postfix notation, (almost) no variables — everything goes through the stack. You don't define functions, you define "words" that extend the language itself.*

```forth
\ 1. Comment ( this is also a comment )

\ 2. "Function" = a new word, defined between : and ;
: greet ( -- )  ." Hello, World" cr ;

\ 3. Variables: rare, the stack rules
variable n   5 n !
create numbers  3 , 1 , 4 , 1 , 5 ,

\ 4. Output
greet

\ 5. Condition (postfix: the test is computed BEFORE the if)
: size ( -- )
  n @ 3 > if ." big" cr
  else n @ 3 = if ." medium" cr
       else ." small" cr then
  then ;
size

\ 6. For (do ... loop, i = counter)
: double-all ( -- )
  5 0 do  numbers i cells + @  2 *  . cr  loop ;
double-all

\ 7. While (begin ... while ... repeat)
: countdown ( -- )
  begin n @ 0 > while  n @ 1 - n !  repeat ;
countdown

\ 8. Recursion (keyword: recurse)
: factorial ( k -- k! )
  dup 1 <= if drop 1 else dup 1 - recurse * then ;
5 factorial . cr

\ 9. Errors: throw / catch (Gforth style)
: divide ( a b -- q )  dup 0 = if -10 throw then / ;
10 0 ['] divide catch
if 2drop ." cannot divide" cr else . cr then
```

---

## Julia

*Modern scientific computing: dynamic yet fast, mathematical syntax (Unicode welcome), and the `.` operator that vectorizes any function.*

```julia
# 2. Function (compact "mathematical" form)
greet(name) = "Hello, " * name

# 3. Variables
n = 5
world = "World"
numbers = [3, 1, 4, 1, 5]
ages = Dict("Alice" => 30, "Bob" => 25)

# 4. Output
println(greet(world))

# 5. Condition
if n > 3
    println("big")
elseif n == 3
    println("medium")
else
    println("small")
end

# 6. For — or vectorized in one line: println.(numbers .* 2)
for x in numbers
    println(x * 2)
end

# 7. While (global: blocks have their own scope)
while n > 0
    global n -= 1
end

# 8. Recursion
factorial(k) = k <= 1 ? 1 : k * factorial(k - 1)
println(factorial(5))

# 9. Errors (÷ = integer division; 10/0 would give Inf!)
try
    println(10 ÷ 0)
catch
    println("cannot divide")
end
```

---

## C#

*Microsoft's Java, now more concise than its model. Telling detail: a literal `10 / 0` is rejected AT COMPILE TIME — you need a variable to trigger the exception.*

```csharp
using System;
using System.Collections.Generic;

class SiliconRosetta
{
    // 2. Function (expression body)
    static string Greet(string name) => "Hello, " + name;

    // 8. Recursion
    static int Factorial(int k) => k <= 1 ? 1 : k * Factorial(k - 1);

    static void Main()
    {
        // 3. Variables (var = inferred type)
        int n = 5;
        var world = "World";
        var numbers = new[] { 3, 1, 4, 1, 5 };
        var ages = new Dictionary<string, int> { ["Alice"] = 30, ["Bob"] = 25 };

        // 4. Output
        Console.WriteLine(Greet(world));

        // 5. Condition
        if (n > 3) Console.WriteLine("big");
        else if (n == 3) Console.WriteLine("medium");
        else Console.WriteLine("small");

        // 6. For-each
        foreach (var x in numbers) Console.WriteLine(x * 2);

        // 7. While
        while (n > 0) n--;

        // 9. Exceptions (via a variable: literal 10/0 won't compile)
        try
        {
            int d = 0;
            Console.WriteLine(10 / d);
        }
        catch (DivideByZeroException)
        {
            Console.WriteLine("cannot divide");
        }
    }
}
```

---

## OCaml

*Typed, pragmatic functional programming: immutable by default (mutation requires an explicit `ref`), recursion declared with `rec`, and errors handled as a type (`option`) via pattern matching.*

```ocaml
(* 2. Function *)
let greet name = "Hello, " ^ name

(* 8. Recursion: the rec keyword is MANDATORY *)
let rec factorial k =
  if k <= 1 then 1 else k * factorial (k - 1)

(* 9. The error as a type *)
let divide a b =
  if b = 0 then None else Some (a / b)

let () =
  (* 3. Variables: immutable; ref for mutation *)
  let n = ref 5 in
  let world = "World" in
  let numbers = [3; 1; 4; 1; 5] in
  let ages = [("Alice", 30); ("Bob", 25)] in
  ignore ages;

  (* 4. Output *)
  print_endline (greet world);

  (* 5. Condition (expression) *)
  print_endline
    (if !n > 3 then "big"
     else if !n = 3 then "medium"
     else "small");

  (* 6. For: functional iteration *)
  List.iter (fun x -> Printf.printf "%d\n" (x * 2)) numbers;

  (* 7. While: possible, but requires the mutable reference *)
  while !n > 0 do
    n := !n - 1
  done;

  Printf.printf "%d\n" (factorial 5);

  (* 9. Pattern matching on the result *)
  match divide 10 0 with
  | Some r -> Printf.printf "%d\n" r
  | None -> print_endline "cannot divide"
```

---

## Prolog

*The great disorientation: no statements, no sequence — facts, rules, and an engine that searches for proofs. The "loop" is backtracking; the "function" is a relation that works in both directions.*

```prolog
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
```

---

## SQL

*Declarative by default: you describe the result, never the path. The query language itself has no for loop — you think in sets; procedural dialects (T-SQL, PL/pgSQL) do add WHILE and cursors. And yet pure SQL is Turing-complete thanks to recursive CTEs.*

```sql
-- 1. Comment

-- 3. "Variables" = tables
CREATE TABLE numbers (x INTEGER);
INSERT INTO numbers VALUES (3), (1), (4), (1), (5);

CREATE TABLE ages (name TEXT, age INTEGER);
INSERT INTO ages VALUES ('Alice', 30), ('Bob', 25);

-- 4. Output
SELECT 'Hello, ' || 'World' AS greeting;

-- 5. Condition: CASE (by value) or WHERE (by filtering)
SELECT CASE
         WHEN 5 > 3 THEN 'big'
         WHEN 5 = 3 THEN 'medium'
         ELSE 'small'
       END AS size;

-- 6. "For loop": none in the query language — one operation on the whole set
SELECT x * 2 AS double FROM numbers;

-- 7+8. While and recursion: the recursive CTE
WITH RECURSIVE fact(k, f) AS (
    SELECT 1, 1
    UNION ALL
    SELECT k + 1, f * (k + 1) FROM fact WHERE k < 5
)
SELECT f FROM fact WHERE k = 5;

-- 9. Error avoided by construction: NULLIF turns
--    division by zero into NULL
SELECT COALESCE(CAST(10 / NULLIF(0, 0) AS TEXT),
                'cannot divide');
```

---

## COBOL

*1959, still at the heart of banking: readability through administrative English (`SUBTRACT 1 FROM N`), data declared by "pictures" (PIC), and a DIVISION structure inherited from punched cards.*

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SILICON-ROSETTA.
      * 1. COMMENT (asterisk in column 7)

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * 3. VARIABLES: declared by "pictures" (PIC)
       01 N          PIC 9 VALUE 5.
       01 WORLD      PIC X(10) VALUE "WORLD".
       01 I          PIC 9.
       01 K          PIC 9(6).
       01 F          PIC 9(6) VALUE 1.
       01 D          PIC 9 VALUE 0.
       01 NUMBERS.
          05 NB      PIC 9 OCCURS 5 TIMES.

       PROCEDURE DIVISION.
      * 4. OUTPUT
           DISPLAY "HELLO, " WORLD.

           MOVE 3 TO NB(1)  MOVE 1 TO NB(2)  MOVE 4 TO NB(3)
           MOVE 1 TO NB(4)  MOVE 5 TO NB(5).

      * 5. CONDITION
           IF N > 3
              DISPLAY "BIG"
           ELSE
              IF N = 3
                 DISPLAY "MEDIUM"
              ELSE
                 DISPLAY "SMALL"
              END-IF
           END-IF.

      * 6. FOR LOOP
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
              COMPUTE K = NB(I) * 2
              DISPLAY K
           END-PERFORM.

      * 7. WHILE
           PERFORM UNTIL N = 0
              SUBTRACT 1 FROM N
           END-PERFORM.

      * 8. RECURSION: allowed since COBOL 2002 (RECURSIVE),
      *    but the spirit of the language remains iterative:
           PERFORM VARYING K FROM 2 BY 1 UNTIL K > 5
              MULTIPLY K BY F
           END-PERFORM.
           DISPLAY F.

      * 9. ERRORS: dedicated clause on the statement
           DIVIDE 10 BY D GIVING K
              ON SIZE ERROR DISPLAY "CANNOT DIVIDE"
           END-DIVIDE.

           STOP RUN.
```

---

## Assembly (x86-64, NASM, Linux)

*Beneath all the others: there are NO loops, NO conditions, NO functions — only comparisons, jumps, and a stack. Every structure in the previous languages compiles down to these patterns. Simplified, commented version.*

```nasm
section .data
    hello   db "Hello, World", 10     ; 10 = '\n'
    lhello  equ $ - hello
    numbers dd 3, 1, 4, 1, 5

section .text
global _start

; 2. "Function" = label + call/ret  (8. recursion via the stack)
factorial:                 ; argument in rdi, result in rax
    cmp rdi, 1
    jle .base              ; 5. condition = compare then JUMP
    push rdi               ; save k on the stack
    dec rdi
    call factorial         ; recursive call
    pop rdi
    imul rax, rdi          ; rax = factorial(k-1) * k
    ret
.base:
    mov rax, 1
    ret

_start:
    ; 4. output = "write" system call
    mov rax, 1             ; syscall #1: write
    mov rdi, 1             ; standard output
    mov rsi, hello
    mov rdx, lhello
    syscall

    ; 3. variables = registers (or memory addresses)
    mov rcx, 5             ; n = 5

    ; 7. while: test + jump (the loop DOES NOT EXIST)
.while:
    cmp rcx, 0
    je .end_while
    dec rcx
    jmp .while
.end_while:

    ; 6. for = the same pattern, with a counter
    xor rbx, rbx           ; i = 0
.for:
    cmp rbx, 5
    jge .end_for
    mov eax, [numbers + rbx*4]
    add eax, eax           ; x * 2  (printing omitted: converting
    inc rbx                ;  an integer to text takes ~20 lines!)
    jmp .for
.end_for:

    mov rdi, 5
    call factorial         ; rax = 120

    ; 9. errors: NO mechanism — dividing by zero
    ;    triggers a processor interrupt (SIGFPE)

    mov rax, 60            ; syscall exit
    xor rdi, rdi
    syscall
```

---

## Smalltalk

*Pure object orientation (1972): there are ONLY objects and messages. Even `if` doesn't exist — `ifTrue:` is a message sent to a boolean object, with code blocks as arguments.*

```smalltalk
"1. Comment (in double quotes!)"

| greet n world numbers ages factorial |

"2. Function: here a block (methods live in classes)"
greet := [ :name | 'Hello, ', name ].

"3. Variables (declared between | |, untyped)"
n := 5.
world := 'World'.
numbers := #(3 1 4 1 5).
ages := Dictionary newFrom: { 'Alice' -> 30. 'Bob' -> 25 }.

"4. Output"
Transcript showln: (greet value: world).

"5. Condition: ifTrue: is a MESSAGE sent to the boolean"
n > 3
    ifTrue: [ Transcript showln: 'big' ]
    ifFalse: [ n = 3
        ifTrue: [ Transcript showln: 'medium' ]
        ifFalse: [ Transcript showln: 'small' ] ].

"6. For: a message sent to the collection"
numbers do: [ :x | Transcript showln: (x * 2) printString ].

"7. While: a message sent to the condition block"
[ n > 0 ] whileTrue: [ n := n - 1 ].

"8. Recursion (self-referencing block)"
factorial := nil.
factorial := [ :k |
    k <= 1 ifTrue: [ 1 ] ifFalse: [ k * (factorial value: k - 1) ] ].
Transcript showln: (factorial value: 5) printString.

"9. Errors: messages again"
[ Transcript showln: (10 / 0) printString ]
    on: ZeroDivide
    do: [ :e | Transcript showln: 'cannot divide' ].
```

---

## Erlang

*Actor-based concurrency and "let it crash": variables are assigned ONCE, there are no loops (recursion is mandatory), and real error handling means letting the process die under a supervisor's watch.*

```erlang
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
```

---

## APL

*Everything is an array, every operation has its own symbol: the whole program fits in a few dense lines. The for loop is pointless — operations apply to the whole structure at once. Factorial? Already built in: `!5`.*

```apl
⍝ 1. Comment

⍝ 3. Variables
n ← 5
world ← 'World'
numbers ← 3 1 4 1 5

⍝ 2+4. Function (⍵ = argument) and output
greet ← {'Hello, ', ⍵}
⎕ ← greet world

⍝ 5. Condition... by selecting from an array!
⎕ ← (1+(n=3)+2×n>3) ⊃ 'small' 'medium' 'big'

⍝ 6. "For": pointless — the operation is vectorized
⎕ ← 2 × numbers        ⍝ doubles the WHOLE list at once

⍝ 7. While (very rare): here via a recursive function
countdown ← {⍵=0: ⍵ ⋄ ∇ ⍵-1}
countdown n

⍝ 8. Recursion (∇ = self-reference) — but !5 already exists
factorial ← {⍵≤1: 1 ⋄ ⍵ × ∇ ⍵-1}
⎕ ← factorial 5        ⍝ or simply: !5

⍝ 9. Errors: guard inside the function
⎕ ← {0=⍵: 'cannot divide' ⋄ 10÷⍵} 0
```

---

## Scheme

*The minimalist academic Lisp. Its decisive contribution: tail recursion is GUARANTEED by the standard — a recursive call in tail position consumes no stack. The while loop is therefore officially superfluous.*

```scheme
; 1. Comment

; 2. Function
(define (greet name)
  (string-append "Hello, " name))

; 3. Variables
(define n 5)
(define world "World")
(define numbers '(3 1 4 1 5))
(define ages '(("Alice" . 30) ("Bob" . 25)))

; 4. Output
(display (greet world)) (newline)

; 5. Condition
(cond ((> n 3) (display "big"))
      ((= n 3) (display "medium"))
      (else    (display "small")))
(newline)

; 6. For
(for-each (lambda (x) (display (* x 2)) (newline)) numbers)

; 7. "While": named loop in TAIL recursion
;    (guaranteed not to grow the stack: it IS a loop)
(let countdown ((k n))
  (unless (= k 0)
    (countdown (- k 1))))

; 8. Recursion
(define (factorial k)
  (if (<= k 1) 1 (* k (factorial (- k 1)))))
(display (factorial 5)) (newline)

; 9. Errors (R7RS)
(display
  (guard (e (#t "cannot divide"))
    (/ 10 0)))
(newline)
```

---

## AWK

*The inverted model: an AWK program is a list of "pattern { action }" rules applied automatically to EVERY line of the input file. The main loop is implicit — you never write it.*

```awk
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
```

---

## ALGOL 60

*The common ancestor (1960): this is where `begin/end` blocks, type declarations, lexical scope and permitted recursion are born — everything C, Pascal and Java would inherit. The missing link between Fortran/COBOL and the 1970s.*

```algol60
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
```

---

## PostScript

*Every page printed in the 1990s was a program: PostScript is a full stack-based, postfix language — like Forth — that your printer executed.*

```postscript
% 1. Comment

% 2. "Function" = procedure defined in a dictionary
/factorial {                      % 8. recursion
    dup 1 le
    { pop 1 }
    { dup 1 sub factorial mul }
    ifelse
} def

% 3. Variables (def); native arrays and dictionaries
/n 5 def
/world (World) def
/numbers [3 1 4 1 5] def
/ages << /Alice 30 /Bob 25 >> def

% 4. Output (console)
(Hello, World) print

% 5. Condition (postfix, procedures as arguments)
n 3 gt
{ (big) print }
{ n 3 eq { (medium) print } { (small) print } ifelse }
ifelse

% 6. For: forall applies a procedure to each element
numbers { 2 mul = } forall        % = prints a number

% 7. While: infinite loop + exit
{ n 0 le { exit } if  /n n 1 sub def } loop

5 factorial =

% 9. Errors: stopped (the ancestor of try)
{ 10 0 div = } stopped
{ (cannot divide) print } if
```

---

## Verilog

*The great reversal: Verilog does not describe a computation but an electronic CIRCUIT. Outside simulation blocks, everything "runs" in parallel — the very notion of sequence disappears.*

```verilog
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
```

---

## Rockstar

*The closing wink: Rockstar (2018) is a real, Turing-complete language whose programs read like 1980s power-ballad lyrics. "Shout" prints, "Knock down" decrements. It closes the loop of this document: programming in (almost) natural language already exists — syntax indicative, check against an interpreter.*

```rockstar
(A Rockstar program is a song)

Shout "Hello, World!"

My count is 5

If my count is greater than 3
Shout "big"

While my count is greater than nothing
Knock my count down

Factorial takes a number
If a number is less than 2
Give back 1

Put a number minus 1 into the rest
Give back a number times Factorial taking the rest

Shout Factorial taking 5
```

---

## Comparative reading grid

| Language | Blocks | Typing | Native dict | Errors | What it reveals |
|---|---|---|---|---|---|
| Python | indentation | dynamic, inferred | yes | exceptions | closest to pseudo-code |
| JavaScript | `{ }` | dynamic | objects | exceptions | `10/0` = `Infinity`, no error |
| C | `{ }` | static, explicit | no | none | the bare machine |
| Java | `{ }` | static, explicit | `Map` | exceptions | everything is a class |
| Kotlin | `{ }` | static, inferred | `mapOf` | exceptions | Java without the ceremony |
| Go | `{ }` | static, inferred | yes | values | a single loop: `for` |
| Rust | `{ }` | static, inferred | `HashMap` | `Result`/`Option` | immutable by default |
| Swift | `{ }` | static, inferred | yes | `throws`/`do-catch` | explicit safety |
| Ruby | `end` | dynamic | yes | exceptions | everything is an expression |
| PHP | `{ }` | dynamic | assoc. array | exceptions | the universal array |
| Perl | `{ }` | dynamic | hash `%` | `eval`/`$@` | sigils carry the type |
| Lua | `end` | dynamic | table | `pcall` | one structure: the table |
| Bash | `fi`/`done` | text | assoc. (v4) | exit codes | everything is a command |
| Pascal | `begin/end` | static, explicit | no | manual check | declarations kept apart |
| Haskell | indentation | static, inferred | `Data.Map` | types (`Maybe`) | no while, no mutation |
| Common Lisp | `( )` | dynamic | alist | conditions | code is the syntax tree |
| Fortran | `end` | static, explicit | no | manual check | the scientific elder (1957) |
| BASIC | line numbers | dynamic | no | `ON ERROR GOTO` | GOTO is king; recursion impossible |
| Ada | `begin/end` | very strong static | no (std) | exceptions | built for critical systems |
| Forth | words `: ;` | none (stack) | no | `throw/catch` | postfix, all through the stack |
| Julia | `end` | strong dynamic | `Dict` | exceptions | `.` vectorization, scientific computing |
| C# | `{ }` | static, inferred | `Dictionary` | exceptions | literal `10/0` rejected at compile time |
| OCaml | `let/in` | static, inferred | assoc. lists | `option` + `match` | explicit `rec`, immutable by default |
| Prolog | rules `:-` | dynamic | facts | `catch/throw` | no sequence: logic and backtracking |
| SQL | queries | table schema | tables | `NULLIF`/`NULL` | declarative by default: set thinking |
| COBOL | `DIVISION` | `PIC` pictures | no | `ON SIZE ERROR` | administrative English (1959) |
| Assembly | labels | none | no | interrupts | only jumps exist |
| Smalltalk | blocks `[ ]` | dynamic | `Dictionary` | `on:do:` messages | even the if is a message |
| Erlang | clauses `;` `.` | dynamic | map `#{}` | "let it crash" | single assignment, mandatory recursion |
| APL | symbols | arrays | no | guards | everything is an array: `!5` is enough |
| Scheme | `( )` | dynamic | alist | `guard` | guaranteed tail recursion |
| AWK | pattern `{ }` | dynamic | assoc. arrays | manual check | the main loop is implicit |
| ALGOL 60 | `begin/end` | static | no | none | the common ancestor (1960) |
| PostScript | procs `{ }` | dynamic | `<< >>` | `stopped` | every printed page was a program |
| Verilog | `module` | bits/integers | no | `x` value | describes a circuit: all parallel |
| Rockstar | verses | dynamic | no | none | the code is a song |
