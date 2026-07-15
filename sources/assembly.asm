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
