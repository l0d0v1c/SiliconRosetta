(* 2. Function *)
let greet name = "Hello, " ^ name

(* 8. Recursion: the rec keyword is MANDATORY *)
let rec factorial k =
  if k <= 1 then 1 else k * factorial (k - 1)

(* 9. The error as a type *)
let divide a b =
  if b = 0 then None else Some (a / b)

let () =
  (* 3. Variables: immutable; ref for mutation *)
  let n = ref 5 in
  let world = "World" in
  let numbers = [3; 1; 4; 1; 5] in
  let ages = [("Alice", 30); ("Bob", 25)] in
  ignore ages;

  (* 4. Output *)
  print_endline (greet world);

  (* 5. Condition (expression) *)
  print_endline
    (if !n > 3 then "big"
     else if !n = 3 then "medium"
     else "small");

  (* 6. For: functional iteration *)
  List.iter (fun x -> Printf.printf "%d\n" (x * 2)) numbers;

  (* 7. While: possible, but requires the mutable reference *)
  while !n > 0 do
    n := !n - 1
  done;

  Printf.printf "%d\n" (factorial 5);

  (* 9. Pattern matching on the result *)
  match divide 10 0 with
  | Some r -> Printf.printf "%d\n" r
  | None -> print_endline "cannot divide"
