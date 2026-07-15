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
