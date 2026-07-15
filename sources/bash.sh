#!/usr/bin/env bash

# 2. Function
greet() {
  echo "Hello, $1"
}

# 3. Variables (all text; associative arrays since bash 4)
n=5
world="World"
numbers=(3 1 4 1 5)
declare -A ages=([Alice]=30 [Bob]=25)

# 4. Output
greet "$world"

# 5. Condition
if (( n > 3 )); then
  echo "big"
elif (( n == 3 )); then
  echo "medium"
else
  echo "small"
fi

# 6. For
for x in "${numbers[@]}"; do
  echo $(( x * 2 ))
done

# 7. While
while (( n > 0 )); do
  n=$(( n - 1 ))
done

# 8. Recursion (via command substitution)
factorial() {
  local k=$1
  if (( k <= 1 )); then echo 1; return; fi
  echo $(( k * $(factorial $(( k - 1 ))) ))
}

# 9. No exceptions: exit codes and checks
d=0
if (( d == 0 )); then
  echo "cannot divide"
else
  echo $(( 10 / d ))
fi
