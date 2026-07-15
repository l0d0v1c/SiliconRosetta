with Ada.Text_IO; use Ada.Text_IO;

procedure Silicon_Rosetta is

   --  2. Function
   function Greet (Name : String) return String is
   begin
      return "Hello, " & Name;
   end Greet;

   --  8. Recursion
   function Factorial (K : Integer) return Integer is
   begin
      if K <= 1 then
         return 1;
      else
         return K * Factorial (K - 1);
      end if;
   end Factorial;

   --  3. Variables: very strong typing (no standard dict)
   N       : Integer := 5;
   World   : constant String := "World";
   Numbers : array (1 .. 5) of Integer := (3, 1, 4, 1, 5);
   D       : Integer := 0;

begin
   --  4. Output
   Put_Line (Greet (World));

   --  5. Condition
   if N > 3 then
      Put_Line ("big");
   elsif N = 3 then
      Put_Line ("medium");
   else
      Put_Line ("small");
   end if;

   --  6. For
   for X of Numbers loop
      Put_Line (Integer'Image (X * 2));
   end loop;

   --  7. While
   while N > 0 loop
      N := N - 1;
   end loop;

   Put_Line (Integer'Image (Factorial (5)));

   --  9. Exceptions (raised automatically by the language)
   begin
      Put_Line (Integer'Image (10 / D));
   exception
      when Constraint_Error =>
         Put_Line ("cannot divide");
   end;
end Silicon_Rosetta;
