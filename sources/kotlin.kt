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
