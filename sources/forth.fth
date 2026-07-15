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
