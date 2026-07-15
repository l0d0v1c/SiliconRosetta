-- 2. Function
local function greet(name)
  return "Hello, " .. name
end

-- 3. Variables: the table is THE single structure
local n = 5
local world = "World"
local numbers = {3, 1, 4, 1, 5}
local ages = {Alice = 30, Bob = 25}

-- 4. Output
print(greet(world))

-- 5. Condition
if n > 3 then
  print("big")
elseif n == 3 then
  print("medium")
else
  print("small")
end

-- 6. For
for _, x in ipairs(numbers) do
  print(x * 2)
end

-- 7. While
while n > 0 do
  n = n - 1
end

-- 8. Recursion
local function factorial(k)
  if k <= 1 then return 1 end
  return k * factorial(k - 1)
end

-- 9. Errors: pcall (protected call)
local function divide(a, b)
  if b == 0 then error("division by zero") end
  return a / b
end

local ok, res = pcall(divide, 10, 0)
if ok then print(res) else print("cannot divide") end
