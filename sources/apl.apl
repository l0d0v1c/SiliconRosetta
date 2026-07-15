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
