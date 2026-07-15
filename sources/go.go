package main

import "fmt"

// 2. Function
func greet(name string) string {
	return "Hello, " + name
}

// 8. Recursion
func factorial(k int) int {
	if k <= 1 {
		return 1
	}
	return k * factorial(k-1)
}

// 9. The error is an ordinary return value
func divide(a, b int) (int, error) {
	if b == 0 {
		return 0, fmt.Errorf("division by zero")
	}
	return a / b, nil
}

func main() {
	// 3. Variables (types inferred with :=)
	n := 5
	world := "World"
	numbers := []int{3, 1, 4, 1, 5}
	ages := map[string]int{"Alice": 30, "Bob": 25}
	_ = ages

	// 4. Output
	fmt.Println(greet(world))

	// 5. Condition
	if n > 3 {
		fmt.Println("big")
	} else if n == 3 {
		fmt.Println("medium")
	} else {
		fmt.Println("small")
	}

	// 6. For (the ONLY loop in the language)
	for _, x := range numbers {
		fmt.Println(x * 2)
	}

	// 7. "While" = for with a lone condition
	for n > 0 {
		n = n - 1
	}

	// 9. Error handling by value
	if result, err := divide(10, 0); err != nil {
		fmt.Println("cannot divide")
	} else {
		fmt.Println(result)
	}
}
