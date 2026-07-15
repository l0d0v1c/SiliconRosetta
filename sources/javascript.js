// 2. Function
function greet(name) {
  return "Hello, " + name;
}

// 3. Variables (const = constant, let = mutable)
let n = 5;
const world = "World";
const numbers = [3, 1, 4, 1, 5];
const ages = { Alice: 30, Bob: 25 };

// 4. Output
console.log(greet(world));

// 5. Condition
if (n > 3) {
  console.log("big");
} else if (n === 3) {
  console.log("medium");
} else {
  console.log("small");
}

// 6. For
for (const x of numbers) {
  console.log(x * 2);
}

// 7. While
while (n > 0) {
  n = n - 1;
}

// 8. Recursion
function factorial(k) {
  if (k <= 1) return 1;
  return k * factorial(k - 1);
}

// 9. Errors (10/0 is Infinity: we must throw ourselves)
function divide(a, b) {
  if (b === 0) throw new Error("cannot divide");
  return a / b;
}
try {
  console.log(divide(10, 0));
} catch (e) {
  console.log(e.message);
}
