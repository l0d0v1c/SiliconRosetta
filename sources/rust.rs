use std::collections::HashMap;

// 2. Function
fn greet(name: &str) -> String {
    format!("Hello, {}", name)
}

// 8. Recursion
fn factorial(k: u64) -> u64 {
    if k <= 1 { 1 } else { k * factorial(k - 1) }
}

fn main() {
    // 3. Variables: immutable by default, explicit `mut`
    let mut n = 5;
    let world = "World";
    let numbers = vec![3, 1, 4, 1, 5];
    let ages = HashMap::from([("Alice", 30), ("Bob", 25)]);
    let _ = ages;

    // 4. Output
    println!("{}", greet(world));

    // 5. Condition (it is an expression)
    if n > 3 {
        println!("big");
    } else if n == 3 {
        println!("medium");
    } else {
        println!("small");
    }

    // 6. For
    for x in &numbers {
        println!("{}", x * 2);
    }

    // 7. While
    while n > 0 {
        n -= 1;
    }

    // 9. No exceptions: Option + match
    match 10_i32.checked_div(0) {
        Some(r) => println!("{}", r),
        None => println!("cannot divide"),
    }
}
