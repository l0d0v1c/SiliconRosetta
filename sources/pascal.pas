program SiliconRosetta;

{ 2. Function }
function Greet(name: string): string;
begin
  Greet := 'Hello, ' + name;
end;

{ 8. Recursion }
function Factorial(k: integer): integer;
begin
  if k <= 1 then
    Factorial := 1
  else
    Factorial := k * Factorial(k - 1);
end;

var
  n, i, d: integer;
  world: string;
  numbers: array[1..5] of integer = (3, 1, 4, 1, 5);
  { no dictionary in standard Pascal }
begin
  n := 5;
  world := 'World';

  { 4. Output }
  writeln(Greet(world));

  { 5. Condition }
  if n > 3 then
    writeln('big')
  else if n = 3 then
    writeln('medium')
  else
    writeln('small');

  { 6. For }
  for i := 1 to 5 do
    writeln(numbers[i] * 2);

  { 7. While }
  while n > 0 do
    n := n - 1;

  { 9. Manual check (try..except exists in Free Pascal) }
  d := 0;
  if d = 0 then
    writeln('cannot divide')
  else
    writeln(10 div d);
end.
