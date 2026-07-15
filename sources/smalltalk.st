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
