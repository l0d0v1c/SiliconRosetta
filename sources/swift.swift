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
