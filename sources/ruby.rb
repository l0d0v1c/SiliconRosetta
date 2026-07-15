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
