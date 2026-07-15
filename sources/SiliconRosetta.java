import java.util.*;

public class SiliconRosetta {
    // 2. Function (static method)
    static String greet(String name) {
        return "Hello, " + name;
    }

    // 8. Recursion
    static int factorial(int k) {
        if (k <= 1) return 1;
        return k * factorial(k - 1);
    }

    public static void main(String[] args) {
        // 3. Typed variables
        int n = 5;
        String world = "World";
        int[] numbers = {3, 1, 4, 1, 5};
        Map<String, Integer> ages = Map.of("Alice", 30, "Bob", 25);

        // 4. Output
        System.out.println(greet(world));

        // 5. Condition
        if (n > 3) System.out.println("big");
        else if (n == 3) System.out.println("medium");
        else System.out.println("small");

        // 6. For-each
        for (int x : numbers) System.out.println(x * 2);

        // 7. While
        while (n > 0) n = n - 1;

        // 9. Exceptions
        try {
            System.out.println(10 / 0);
        } catch (ArithmeticException e) {
            System.out.println("cannot divide");
        }
    }
}
