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
