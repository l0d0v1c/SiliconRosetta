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
