# Programme Rosetta minimal

Un même programme, neuf concepts universels, traduit dans 36 langages.
Les neuf blocs : **commentaire, fonction, variables/types, sortie, condition, boucle for, boucle while, récursivité, gestion d'erreur**.

---

## Pseudo-code de référence

```
# 1. Commentaire

# 2. Fonction (avec paramètre et retour)
fonction saluer(nom):
    retourner "Bonjour, " + nom

# 3. Variables et types
entier n       = 5
texte  monde   = "Monde"
liste  nombres = [3, 1, 4, 1, 5]
dico   ages    = {"Alice": 30, "Bob": 25}

# 4. Sortie
afficher(saluer(monde))

# 5. Condition
si n > 3:        afficher("grand")
sinon si n == 3: afficher("moyen")
sinon:           afficher("petit")

# 6. Boucle bornée
pour chaque x dans nombres:
    afficher(x * 2)

# 7. Boucle conditionnelle
tant que n > 0:
    n = n - 1

# 8. Récursivité
fonction factorielle(k):
    si k <= 1: retourner 1
    retourner k * factorielle(k - 1)

# 9. Gestion d'erreur
essayer:
    afficher(10 / 0)
attraper erreur:
    afficher("division impossible")
```

---

## Python

*Le plus proche du pseudo-code : indentation significative, typage inféré, dictionnaires natifs.*

```python
# 2. Fonction
def saluer(nom):
    return "Bonjour, " + nom

# 3. Variables (types inférés)
n = 5
monde = "Monde"
nombres = [3, 1, 4, 1, 5]
ages = {"Alice": 30, "Bob": 25}

# 4. Sortie
print(saluer(monde))

# 5. Condition
if n > 3:
    print("grand")
elif n == 3:
    print("moyen")
else:
    print("petit")

# 6. For
for x in nombres:
    print(x * 2)

# 7. While
while n > 0:
    n = n - 1

# 8. Récursivité
def factorielle(k):
    if k <= 1:
        return 1
    return k * factorielle(k - 1)

# 9. Erreurs
try:
    print(10 / 0)
except ZeroDivisionError:
    print("division impossible")
```

---

## JavaScript

*Accolades, point-virgules. Piège célèbre : `10 / 0` ne lève PAS d'erreur, ça vaut `Infinity` — il faut lever l'erreur soi-même.*

```javascript
// 2. Fonction
function saluer(nom) {
  return "Bonjour, " + nom;
}

// 3. Variables (const = constante, let = mutable)
let n = 5;
const monde = "Monde";
const nombres = [3, 1, 4, 1, 5];
const ages = { Alice: 30, Bob: 25 };

// 4. Sortie
console.log(saluer(monde));

// 5. Condition
if (n > 3) {
  console.log("grand");
} else if (n === 3) {
  console.log("moyen");
} else {
  console.log("petit");
}

// 6. For
for (const x of nombres) {
  console.log(x * 2);
}

// 7. While
while (n > 0) {
  n = n - 1;
}

// 8. Récursivité
function factorielle(k) {
  if (k <= 1) return 1;
  return k * factorielle(k - 1);
}

// 9. Erreurs (10/0 vaut Infinity : on doit lever l'erreur nous-mêmes)
function diviser(a, b) {
  if (b === 0) throw new Error("division impossible");
  return a / b;
}
try {
  console.log(diviser(10, 0));
} catch (e) {
  console.log(e.message);
}
```

---

## C

*La machine mise à nu : typage explicite, pas de chaînes natives, pas de dictionnaire, pas d'exceptions — on vérifie tout à la main.*

```c
#include <stdio.h>

/* 2. Fonction */
void saluer(char *dest, const char *nom) {
    sprintf(dest, "Bonjour, %s", nom);
}

/* 8. Récursivité */
int factorielle(int k) {
    if (k <= 1) return 1;
    return k * factorielle(k - 1);
}

int main(void) {
    /* 3. Variables : typage explicite, pas de dico natif */
    int n = 5;
    const char *monde = "Monde";
    int nombres[] = {3, 1, 4, 1, 5};
    char message[64];

    /* 4. Sortie */
    saluer(message, monde);
    printf("%s\n", message);

    /* 5. Condition */
    if (n > 3)       printf("grand\n");
    else if (n == 3) printf("moyen\n");
    else             printf("petit\n");

    /* 6. For (sur indice : pas de for-each) */
    for (int i = 0; i < 5; i++)
        printf("%d\n", nombres[i] * 2);

    /* 7. While */
    while (n > 0)
        n = n - 1;

    /* 9. Pas d'exceptions : vérification manuelle */
    int d = 0;
    if (d == 0) printf("division impossible\n");
    else        printf("%d\n", 10 / d);

    return 0;
}
```

---

## Java

*Tout est classe : même ce petit programme exige la cérémonie `public static void main`. Typage fort, exceptions intégrées.*

```java
import java.util.*;

public class Rosetta {
    // 2. Fonction (méthode statique)
    static String saluer(String nom) {
        return "Bonjour, " + nom;
    }

    // 8. Récursivité
    static int factorielle(int k) {
        if (k <= 1) return 1;
        return k * factorielle(k - 1);
    }

    public static void main(String[] args) {
        // 3. Variables typées
        int n = 5;
        String monde = "Monde";
        int[] nombres = {3, 1, 4, 1, 5};
        Map<String, Integer> ages = Map.of("Alice", 30, "Bob", 25);

        // 4. Sortie
        System.out.println(saluer(monde));

        // 5. Condition
        if (n > 3) System.out.println("grand");
        else if (n == 3) System.out.println("moyen");
        else System.out.println("petit");

        // 6. For-each
        for (int x : nombres) System.out.println(x * 2);

        // 7. While
        while (n > 0) n = n - 1;

        // 9. Exceptions
        try {
            System.out.println(10 / 0);
        } catch (ArithmeticException e) {
            System.out.println("division impossible");
        }
    }
}
```

---

## Kotlin

*Java débarrassé de sa cérémonie : inférence de types, fonctions-expressions, `when` généralisé.*

```kotlin
// 2. Fonction (corps-expression)
fun saluer(nom: String) = "Bonjour, $nom"

// 8. Récursivité
fun factorielle(k: Int): Int = if (k <= 1) 1 else k * factorielle(k - 1)

fun main() {
    // 3. Variables : val (constante) / var (mutable), types inférés
    var n = 5
    val monde = "Monde"
    val nombres = listOf(3, 1, 4, 1, 5)
    val ages = mapOf("Alice" to 30, "Bob" to 25)

    // 4. Sortie
    println(saluer(monde))

    // 5. Condition (when = switch généralisé)
    when {
        n > 3  -> println("grand")
        n == 3 -> println("moyen")
        else   -> println("petit")
    }

    // 6. For
    for (x in nombres) println(x * 2)

    // 7. While
    while (n > 0) n -= 1

    // 9. Exceptions (héritées de la JVM)
    try {
        println(10 / 0)
    } catch (e: ArithmeticException) {
        println("division impossible")
    }
}
```

---

## Go

*Minimalisme assumé : une seule boucle (`for`), pas d'exceptions — les erreurs sont des valeurs retournées.*

```go
package main

import "fmt"

// 2. Fonction
func saluer(nom string) string {
	return "Bonjour, " + nom
}

// 8. Récursivité
func factorielle(k int) int {
	if k <= 1 {
		return 1
	}
	return k * factorielle(k-1)
}

// 9. L'erreur est une valeur de retour ordinaire
func diviser(a, b int) (int, error) {
	if b == 0 {
		return 0, fmt.Errorf("division par zéro")
	}
	return a / b, nil
}

func main() {
	// 3. Variables (types inférés avec :=)
	n := 5
	monde := "Monde"
	nombres := []int{3, 1, 4, 1, 5}
	ages := map[string]int{"Alice": 30, "Bob": 25}
	_ = ages

	// 4. Sortie
	fmt.Println(saluer(monde))

	// 5. Condition
	if n > 3 {
		fmt.Println("grand")
	} else if n == 3 {
		fmt.Println("moyen")
	} else {
		fmt.Println("petit")
	}

	// 6. For (la SEULE boucle du langage)
	for _, x := range nombres {
		fmt.Println(x * 2)
	}

	// 7. "While" = for avec condition seule
	for n > 0 {
		n = n - 1
	}

	// 9. Gestion d'erreur par valeur
	if resultat, err := diviser(10, 0); err != nil {
		fmt.Println("division impossible")
	} else {
		fmt.Println(resultat)
	}
}
```

---

## Rust

*Variables immuables par défaut, pas d'exceptions : les erreurs vivent dans les types (`Option`, `Result`) et le compilateur force à les traiter.*

```rust
use std::collections::HashMap;

// 2. Fonction
fn saluer(nom: &str) -> String {
    format!("Bonjour, {}", nom)
}

// 8. Récursivité
fn factorielle(k: u64) -> u64 {
    if k <= 1 { 1 } else { k * factorielle(k - 1) }
}

fn main() {
    // 3. Variables : immuables par défaut, `mut` explicite
    let mut n = 5;
    let monde = "Monde";
    let nombres = vec![3, 1, 4, 1, 5];
    let ages = HashMap::from([("Alice", 30), ("Bob", 25)]);
    let _ = ages;

    // 4. Sortie
    println!("{}", saluer(monde));

    // 5. Condition (c'est une expression)
    if n > 3 {
        println!("grand");
    } else if n == 3 {
        println!("moyen");
    } else {
        println!("petit");
    }

    // 6. For
    for x in &nombres {
        println!("{}", x * 2);
    }

    // 7. While
    while n > 0 {
        n -= 1;
    }

    // 9. Pas d'exceptions : Option + match
    match 10_i32.checked_div(0) {
        Some(r) => println!("{}", r),
        None => println!("division impossible"),
    }
}
```

---

## Swift

*`let`/`var`, sécurité par défaut ; les fonctions qui échouent doivent être marquées `throws` et appelées avec `try`.*

```swift
// 2. Fonction
func saluer(_ nom: String) -> String {
    return "Bonjour, " + nom
}

// 3. Variables : let (constante) / var (mutable)
var n = 5
let monde = "Monde"
let nombres = [3, 1, 4, 1, 5]
let ages = ["Alice": 30, "Bob": 25]

// 4. Sortie
print(saluer(monde))

// 5. Condition
if n > 3 {
    print("grand")
} else if n == 3 {
    print("moyen")
} else {
    print("petit")
}

// 6. For
for x in nombres {
    print(x * 2)
}

// 7. While
while n > 0 {
    n -= 1
}

// 8. Récursivité
func factorielle(_ k: Int) -> Int {
    if k <= 1 { return 1 }
    return k * factorielle(k - 1)
}

// 9. Erreurs : throws + do/try/catch
enum ErreurCalcul: Error { case divisionParZero }

func diviser(_ a: Int, _ b: Int) throws -> Int {
    guard b != 0 else { throw ErreurCalcul.divisionParZero }
    return a / b
}

do {
    print(try diviser(10, 0))
} catch {
    print("division impossible")
}
```

---

## Ruby

*Tout est objet, tout est expression : la dernière valeur calculée est le retour. Les boucles idiomatiques sont des itérateurs avec blocs.*

```ruby
# 2. Fonction (le dernier calcul = valeur de retour)
def saluer(nom)
  "Bonjour, #{nom}"
end

# 3. Variables
n = 5
monde = "Monde"
nombres = [3, 1, 4, 1, 5]
ages = { "Alice" => 30, "Bob" => 25 }

# 4. Sortie
puts saluer(monde)

# 5. Condition
if n > 3
  puts "grand"
elsif n == 3
  puts "moyen"
else
  puts "petit"
end

# 6. For (idiomatique : itérateur + bloc)
nombres.each do |x|
  puts x * 2
end

# 7. While
while n > 0
  n -= 1
end

# 8. Récursivité
def factorielle(k)
  return 1 if k <= 1
  k * factorielle(k - 1)
end

# 9. Erreurs
begin
  puts 10 / 0
rescue ZeroDivisionError
  puts "division impossible"
end
```

---

## PHP

*Sigil `$` sur chaque variable ; le tableau associatif est la structure universelle (liste et dico à la fois).*

```php
<?php
// 2. Fonction
function saluer($nom) {
    return "Bonjour, " . $nom;
}

// 3. Variables
$n = 5;
$monde = "Monde";
$nombres = [3, 1, 4, 1, 5];
$ages = ["Alice" => 30, "Bob" => 25];

// 4. Sortie
echo saluer($monde), "\n";

// 5. Condition
if ($n > 3) {
    echo "grand\n";
} elseif ($n == 3) {
    echo "moyen\n";
} else {
    echo "petit\n";
}

// 6. For
foreach ($nombres as $x) {
    echo $x * 2, "\n";
}

// 7. While
while ($n > 0) {
    $n = $n - 1;
}

// 8. Récursivité
function factorielle($k) {
    if ($k <= 1) return 1;
    return $k * factorielle($k - 1);
}

// 9. Erreurs (PHP 8)
try {
    echo 10 / 0;
} catch (DivisionByZeroError $e) {
    echo "division impossible\n";
}
```

---

## Perl

*Les sigils portent le type : `$` scalaire, `@` liste, `%` hash. Erreurs via `eval` + variable spéciale `$@`.*

```perl
use strict;
use warnings;

# 2. Fonction
sub saluer {
    my ($nom) = @_;
    return "Bonjour, $nom";
}

# 3. Variables : le sigil indique la structure
my $n = 5;
my $monde = "Monde";
my @nombres = (3, 1, 4, 1, 5);
my %ages = (Alice => 30, Bob => 25);

# 4. Sortie
print saluer($monde), "\n";

# 5. Condition
if ($n > 3) {
    print "grand\n";
} elsif ($n == 3) {
    print "moyen\n";
} else {
    print "petit\n";
}

# 6. For
for my $x (@nombres) {
    print $x * 2, "\n";
}

# 7. While
while ($n > 0) {
    $n = $n - 1;
}

# 8. Récursivité
sub factorielle {
    my ($k) = @_;
    return 1 if $k <= 1;
    return $k * factorielle($k - 1);
}

# 9. Erreurs : eval capture, $@ contient l'erreur
my $r = eval { 10 / 0 };
print "division impossible\n" if $@;
```

---

## Lua

*Une seule structure de données : la table, qui sert à la fois de liste et de dictionnaire. Erreurs via l'appel protégé `pcall`.*

```lua
-- 2. Fonction
local function saluer(nom)
  return "Bonjour, " .. nom
end

-- 3. Variables : la table est LA structure unique
local n = 5
local monde = "Monde"
local nombres = {3, 1, 4, 1, 5}
local ages = {Alice = 30, Bob = 25}

-- 4. Sortie
print(saluer(monde))

-- 5. Condition
if n > 3 then
  print("grand")
elseif n == 3 then
  print("moyen")
else
  print("petit")
end

-- 6. For
for _, x in ipairs(nombres) do
  print(x * 2)
end

-- 7. While
while n > 0 do
  n = n - 1
end

-- 8. Récursivité
local function factorielle(k)
  if k <= 1 then return 1 end
  return k * factorielle(k - 1)
end

-- 9. Erreurs : pcall (appel protégé)
local function diviser(a, b)
  if b == 0 then error("division par zéro") end
  return a / b
end

local ok, res = pcall(diviser, 10, 0)
if ok then print(res) else print("division impossible") end
```

---

## Bash

*Tout est texte et commande : l'arithmétique demande `(( ))`, les erreurs sont des codes de retour, pas des exceptions.*

```bash
#!/usr/bin/env bash

# 2. Fonction
saluer() {
  echo "Bonjour, $1"
}

# 3. Variables (tout est texte ; assoc. depuis bash 4)
n=5
monde="Monde"
nombres=(3 1 4 1 5)
declare -A ages=([Alice]=30 [Bob]=25)

# 4. Sortie
saluer "$monde"

# 5. Condition
if (( n > 3 )); then
  echo "grand"
elif (( n == 3 )); then
  echo "moyen"
else
  echo "petit"
fi

# 6. For
for x in "${nombres[@]}"; do
  echo $(( x * 2 ))
done

# 7. While
while (( n > 0 )); do
  n=$(( n - 1 ))
done

# 8. Récursivité (via substitution de commande)
factorielle() {
  local k=$1
  if (( k <= 1 )); then echo 1; return; fi
  echo $(( k * $(factorielle $(( k - 1 ))) ))
}

# 9. Pas d'exceptions : codes de retour et vérifications
d=0
if (( d == 0 )); then
  echo "division impossible"
else
  echo $(( 10 / d ))
fi
```

---

## Pascal

*L'ancêtre pédagogique : déclarations séparées du code, `begin...end`, affectation `:=`. Pas de dictionnaire natif.*

```pascal
program Rosetta;

{ 2. Fonction }
function Saluer(nom: string): string;
begin
  Saluer := 'Bonjour, ' + nom;
end;

{ 8. Récursivité }
function Factorielle(k: integer): integer;
begin
  if k <= 1 then
    Factorielle := 1
  else
    Factorielle := k * Factorielle(k - 1);
end;

var
  n, i, d: integer;
  monde: string;
  nombres: array[1..5] of integer = (3, 1, 4, 1, 5);
  { pas de dictionnaire en Pascal standard }
begin
  n := 5;
  monde := 'Monde';

  { 4. Sortie }
  writeln(Saluer(monde));

  { 5. Condition }
  if n > 3 then
    writeln('grand')
  else if n = 3 then
    writeln('moyen')
  else
    writeln('petit');

  { 6. For }
  for i := 1 to 5 do
    writeln(nombres[i] * 2);

  { 7. While }
  while n > 0 do
    n := n - 1;

  { 9. Vérification manuelle (try..except existe en Free Pascal) }
  d := 0;
  if d = 0 then
    writeln('division impossible')
  else
    writeln(10 div d);
end.
```

---

## Haskell

*Fonctionnel pur : pas de mutation, pas de while — tout est récursion et expression. L'erreur devient un type (`Maybe`).*

```haskell
import qualified Data.Map as Map

-- 2. Fonction (pure, signature de type explicite)
saluer :: String -> String
saluer nom = "Bonjour, " ++ nom

-- 8. Récursivité : LE mode de répétition (pas de while !)
factorielle :: Integer -> Integer
factorielle k
  | k <= 1    = 1
  | otherwise = k * factorielle (k - 1)

-- 7. Le "while" se simule par récursion
decompte :: Int -> Int
decompte 0 = 0
decompte n = decompte (n - 1)

-- 9. Pas d'exception : l'échec est un type (Maybe)
diviser :: Int -> Int -> Maybe Int
diviser _ 0 = Nothing
diviser a b = Just (a `div` b)

main :: IO ()
main = do
  -- 3. Variables : immuables, types inférés
  let n = 5 :: Int
      monde = "Monde"
      nombres = [3, 1, 4, 1, 5]
      ages = Map.fromList [("Alice", 30), ("Bob", 25)]

  -- 4. Sortie
  putStrLn (saluer monde)

  -- 5. Condition (expression, jamais instruction)
  putStrLn (if n > 3 then "grand"
            else if n == 3 then "moyen"
            else "petit")

  -- 6. "For" : application d'une fonction à chaque élément
  mapM_ (print . (* 2)) nombres

  -- 9. Traitement du cas d'erreur par filtrage de motif
  case diviser 10 0 of
    Just r  -> print r
    Nothing -> putStrLn "division impossible"
```

---

## Common Lisp

*Tout est parenthèses et préfixe : le code EST l'arbre syntaxique. `cond` remplace if/elif/else, les erreurs sont des « conditions ».*

```lisp
;; 2. Fonction
(defun saluer (nom)
  (concatenate 'string "Bonjour, " nom))

;; 3. Variables globales (convention *...*)
(defparameter *n* 5)
(defparameter *monde* "Monde")
(defparameter *nombres* '(3 1 4 1 5))
(defparameter *ages* '(("Alice" . 30) ("Bob" . 25)))  ; liste d'association

;; 4. Sortie
(format t "~a~%" (saluer *monde*))

;; 5. Condition
(cond ((> *n* 3) (format t "grand~%"))
      ((= *n* 3) (format t "moyen~%"))
      (t         (format t "petit~%")))

;; 6. For
(dolist (x *nombres*)
  (format t "~a~%" (* x 2)))

;; 7. While
(loop while (> *n* 0)
      do (decf *n*))

;; 8. Récursivité (le style naturel du Lisp)
(defun factorielle (k)
  (if (<= k 1)
      1
      (* k (factorielle (- k 1)))))

;; 9. Erreurs (le système de "conditions")
(handler-case
    (format t "~a~%" (/ 10 0))
  (division-by-zero ()
    (format t "division impossible~%")))
```

---

## Fortran

*Le doyen (1957), toujours vivant en calcul scientifique : blocs terminés par `end`, tableaux en citoyens de première classe.*

```fortran
program rosetta
  implicit none
  integer :: n, i, d
  character(len=20) :: monde
  integer, dimension(5) :: nombres = (/ 3, 1, 4, 1, 5 /)
  ! pas de dictionnaire natif

  n = 5
  monde = "Monde"

  ! 4. Sortie
  print *, "Bonjour, ", trim(monde)

  ! 5. Condition
  if (n > 3) then
     print *, "grand"
  else if (n == 3) then
     print *, "moyen"
  else
     print *, "petit"
  end if

  ! 6. For
  do i = 1, 5
     print *, nombres(i) * 2
  end do

  ! 7. While
  do while (n > 0)
     n = n - 1
  end do

  ! 8. Récursivité
  print *, factorielle(5)

  ! 9. Vérification manuelle
  d = 0
  if (d == 0) then
     print *, "division impossible"
  end if

contains
  ! 2. Fonction (récursive : à déclarer explicitement)
  recursive function factorielle(k) result(res)
    integer, intent(in) :: k
    integer :: res
    if (k <= 1) then
       res = 1
    else
       res = k * factorielle(k - 1)
    end if
  end function factorielle
end program rosetta
```

---

## BASIC (classique, lignes numérotées)

*Le langage des micro-ordinateurs des années 80 : GOTO roi, « fonctions » sans paramètres (GOSUB), et — révélateur — la récursivité y est impossible (pas de pile de variables locales).*

```basic
10 REM 1. COMMENTAIRE
20 REM 3. VARIABLES ($ = chaine de caracteres)
30 N = 5
40 MONDE$ = "Monde"
50 DIM NOMBRES(5)
60 FOR I = 1 TO 5: READ NOMBRES(I): NEXT I
70 DATA 3, 1, 4, 1, 5
80 REM 2+4. "FONCTION" = GOSUB (sans parametres ni retour !)
90 NOM$ = MONDE$: GOSUB 500
100 REM 5. CONDITION
110 IF N > 3 THEN PRINT "GRAND": GOTO 150
120 IF N = 3 THEN PRINT "MOYEN": GOTO 150
130 PRINT "PETIT"
150 REM 6. BOUCLE FOR
160 FOR I = 1 TO 5
170 PRINT NOMBRES(I) * 2
180 NEXT I
190 REM 7. WHILE (simule par IF + GOTO)
200 IF N <= 0 THEN 240
210 N = N - 1
220 GOTO 200
240 REM 8. RECURSIVITE IMPOSSIBLE (variables globales,
250 REM    pas de pile) : version iterative obligatoire
260 F = 1: FOR K = 2 TO 5: F = F * K: NEXT K
270 PRINT F
280 REM 9. ERREURS
290 ON ERROR GOTO 600
300 PRINT 10 / 0
310 END
500 PRINT "BONJOUR, "; NOM$: RETURN
600 PRINT "DIVISION IMPOSSIBLE": RESUME 310
```

---

## Ada

*Conçu pour les systèmes critiques (avionique, ferroviaire) : typage le plus fort du panel, verbosité assumée — tout est explicite, rien n'est implicite.*

```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Rosetta is

   --  2. Fonction
   function Saluer (Nom : String) return String is
   begin
      return "Bonjour, " & Nom;
   end Saluer;

   --  8. Récursivité
   function Factorielle (K : Integer) return Integer is
   begin
      if K <= 1 then
         return 1;
      else
         return K * Factorielle (K - 1);
      end if;
   end Factorielle;

   --  3. Variables : typage très fort (pas de dico standard)
   N       : Integer := 5;
   Monde   : constant String := "Monde";
   Nombres : array (1 .. 5) of Integer := (3, 1, 4, 1, 5);
   D       : Integer := 0;

begin
   --  4. Sortie
   Put_Line (Saluer (Monde));

   --  5. Condition
   if N > 3 then
      Put_Line ("grand");
   elsif N = 3 then
      Put_Line ("moyen");
   else
      Put_Line ("petit");
   end if;

   --  6. For
   for X of Nombres loop
      Put_Line (Integer'Image (X * 2));
   end loop;

   --  7. While
   while N > 0 loop
      N := N - 1;
   end loop;

   Put_Line (Integer'Image (Factorielle (5)));

   --  9. Exceptions (levées automatiquement par le langage)
   begin
      Put_Line (Integer'Image (10 / D));
   exception
      when Constraint_Error =>
         Put_Line ("division impossible");
   end;
end Rosetta;
```

---

## Forth

*Le choc conceptuel : notation postfixée, pas de variables (ou presque) — tout passe par la pile. On ne définit pas des fonctions mais des « mots » qui étendent le langage lui-même.*

```forth
\ 1. Commentaire ( ceci aussi est un commentaire )

\ 2. "Fonction" = un nouveau mot, défini entre : et ;
: saluer ( -- )  ." Bonjour, Monde" cr ;

\ 3. Variables : rares, la pile est reine
variable n   5 n !
create nombres  3 , 1 , 4 , 1 , 5 ,

\ 4. Sortie
saluer

\ 5. Condition (postfixée : la condition se calcule AVANT le if)
: taille ( -- )
  n @ 3 > if ." grand" cr
  else n @ 3 = if ." moyen" cr
       else ." petit" cr then
  then ;
taille

\ 6. For (do ... loop, i = compteur)
: doubler ( -- )
  5 0 do  nombres i cells + @  2 *  . cr  loop ;
doubler

\ 7. While (begin ... while ... repeat)
: decompte ( -- )
  begin n @ 0 > while  n @ 1 - n !  repeat ;
decompte

\ 8. Récursivité (mot-clé recurse)
: factorielle ( k -- k! )
  dup 1 <= if drop 1 else dup 1 - recurse * then ;
5 factorielle . cr

\ 9. Erreurs : throw / catch (style Gforth)
: diviser ( a b -- q )  dup 0 = if -10 throw then / ;
10 0 ['] diviser catch
if 2drop ." division impossible" cr else . cr then
```

---

## Julia

*Le langage du calcul scientifique moderne : dynamique mais rapide, syntaxe mathématique (Unicode bienvenu), et l'opérateur `.` qui vectorise n'importe quelle fonction.*

```julia
# 2. Fonction (forme compacte "mathématique")
saluer(nom) = "Bonjour, " * nom

# 3. Variables
n = 5
monde = "Monde"
nombres = [3, 1, 4, 1, 5]
ages = Dict("Alice" => 30, "Bob" => 25)

# 4. Sortie
println(saluer(monde))

# 5. Condition
if n > 3
    println("grand")
elseif n == 3
    println("moyen")
else
    println("petit")
end

# 6. For — ou en une ligne vectorisée : println.(nombres .* 2)
for x in nombres
    println(x * 2)
end

# 7. While (global : les blocs ont leur propre portée)
while n > 0
    global n -= 1
end

# 8. Récursivité
factorielle(k) = k <= 1 ? 1 : k * factorielle(k - 1)
println(factorielle(5))

# 9. Erreurs (÷ = division entière ; 10/0 donnerait Inf !)
try
    println(10 ÷ 0)
catch
    println("division impossible")
end
```

---

## C#

*Le Java de Microsoft, devenu plus concis que son modèle. Détail révélateur : `10 / 0` écrit en littéral est refusé À LA COMPILATION — il faut passer par une variable pour déclencher l'exception.*

```csharp
using System;
using System.Collections.Generic;

class Rosetta
{
    // 2. Fonction (corps-expression)
    static string Saluer(string nom) => "Bonjour, " + nom;

    // 8. Récursivité
    static int Factorielle(int k) => k <= 1 ? 1 : k * Factorielle(k - 1);

    static void Main()
    {
        // 3. Variables (var = type inféré)
        int n = 5;
        var monde = "Monde";
        var nombres = new[] { 3, 1, 4, 1, 5 };
        var ages = new Dictionary<string, int> { ["Alice"] = 30, ["Bob"] = 25 };

        // 4. Sortie
        Console.WriteLine(Saluer(monde));

        // 5. Condition
        if (n > 3) Console.WriteLine("grand");
        else if (n == 3) Console.WriteLine("moyen");
        else Console.WriteLine("petit");

        // 6. For-each
        foreach (var x in nombres) Console.WriteLine(x * 2);

        // 7. While
        while (n > 0) n--;

        // 9. Exceptions (via une variable : le littéral 10/0 ne compile pas)
        try
        {
            int d = 0;
            Console.WriteLine(10 / d);
        }
        catch (DivideByZeroException)
        {
            Console.WriteLine("division impossible");
        }
    }
}
```

---

## OCaml

*Fonctionnel typé et pragmatique : immuable par défaut (muter exige une `ref` explicite), récursivité déclarée par `rec`, et l'erreur traitée comme un type (`option`) filtré par motif.*

```ocaml
(* 2. Fonction *)
let saluer nom = "Bonjour, " ^ nom

(* 8. Récursivité : le mot-clé rec est OBLIGATOIRE *)
let rec factorielle k =
  if k <= 1 then 1 else k * factorielle (k - 1)

(* 9. L'erreur comme type *)
let diviser a b =
  if b = 0 then None else Some (a / b)

let () =
  (* 3. Variables : immuables ; ref pour la mutation *)
  let n = ref 5 in
  let monde = "Monde" in
  let nombres = [3; 1; 4; 1; 5] in
  let ages = [("Alice", 30); ("Bob", 25)] in
  ignore ages;

  (* 4. Sortie *)
  print_endline (saluer monde);

  (* 5. Condition (expression) *)
  print_endline
    (if !n > 3 then "grand"
     else if !n = 3 then "moyen"
     else "petit");

  (* 6. For : itération fonctionnelle *)
  List.iter (fun x -> Printf.printf "%d\n" (x * 2)) nombres;

  (* 7. While : possible, mais exige la référence mutable *)
  while !n > 0 do
    n := !n - 1
  done;

  Printf.printf "%d\n" (factorielle 5);

  (* 9. Filtrage de motif sur le résultat *)
  match diviser 10 0 with
  | Some r -> Printf.printf "%d\n" r
  | None -> print_endline "division impossible"
```

---

## Prolog

*Le grand dépaysement : pas d'instructions, pas de séquence — des faits, des règles, et un moteur qui cherche des preuves. La « boucle » est le backtracking ; la « fonction » est une relation qui marche dans les deux sens.*

```prolog
% 1. Commentaire

% 3. "Variables" = faits dans la base de connaissances
age(alice, 30).
age(bob, 25).
nombres([3, 1, 4, 1, 5]).

% 2. "Fonction" = prédicat (une relation, pas un calcul dirigé)
saluer(Nom, Message) :-
    atom_concat('Bonjour, ', Nom, Message).

% 5. Condition ( -> ; )
taille(N) :-
    (  N > 3   -> writeln(grand)
    ;  N =:= 3 -> writeln(moyen)
    ;             writeln(petit)
    ).

% 6. "Boucle" = récursion sur la structure de la liste
doubler([]).
doubler([X|Reste]) :-
    D is X * 2,
    writeln(D),
    doubler(Reste).

% 8. Récursivité : LE mécanisme central (7. pas de while)
factorielle(K, 1) :- K =< 1.
factorielle(K, F) :-
    K > 1,
    K1 is K - 1,
    factorielle(K1, F1),
    F is K * F1.

% 4+9. Programme principal, avec capture d'erreur
main :-
    saluer('Monde', M), writeln(M),
    taille(5),
    nombres(L), doubler(L),
    factorielle(5, F), writeln(F),
    catch( ( X is 10 / 0, writeln(X) ),
           _Erreur,
           writeln('division impossible') ).
```

---

## SQL

*Déclaratif par défaut : on décrit le résultat voulu, jamais le chemin. Le langage de requête lui-même n'a pas de boucle for — on pense par ensembles ; les dialectes procéduraux (T-SQL, PL/pgSQL) ajoutent WHILE et curseurs. Et pourtant le SQL pur est Turing-complet grâce aux CTE récursives.*

```sql
-- 1. Commentaire

-- 3. "Variables" = tables
CREATE TABLE nombres (x INTEGER);
INSERT INTO nombres VALUES (3), (1), (4), (1), (5);

CREATE TABLE ages (nom TEXT, age INTEGER);
INSERT INTO ages VALUES ('Alice', 30), ('Bob', 25);

-- 4. Sortie
SELECT 'Bonjour, ' || 'Monde' AS salutation;

-- 5. Condition : CASE (par valeur) ou WHERE (par filtrage)
SELECT CASE
         WHEN 5 > 3 THEN 'grand'
         WHEN 5 = 3 THEN 'moyen'
         ELSE 'petit'
       END AS taille;

-- 6. "Boucle for" : absente du langage de requête — opération sur l'ensemble
SELECT x * 2 AS double FROM nombres;

-- 7+8. While et récursivité : la CTE récursive
WITH RECURSIVE fact(k, f) AS (
    SELECT 1, 1
    UNION ALL
    SELECT k + 1, f * (k + 1) FROM fact WHERE k < 5
)
SELECT f FROM fact WHERE k = 5;

-- 9. Erreur évitée par construction : NULLIF transforme
--    la division par zéro en NULL
SELECT COALESCE(CAST(10 / NULLIF(0, 0) AS TEXT),
                'division impossible');
```

---

## COBOL

*1959, toujours au cœur des banques : la lisibilité par l'anglais administratif (`SUBTRACT 1 FROM N`), les données déclarées par « images » (PIC), et une structure en DIVISIONs héritée des cartes perforées.*

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROSETTA.
      * 1. COMMENTAIRE (etoile en colonne 7)

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * 3. VARIABLES : declarees par "images" (PIC)
       01 N          PIC 9 VALUE 5.
       01 MONDE      PIC X(10) VALUE "MONDE".
       01 I          PIC 9.
       01 K          PIC 9(6).
       01 F          PIC 9(6) VALUE 1.
       01 D          PIC 9 VALUE 0.
       01 NOMBRES.
          05 NB      PIC 9 OCCURS 5 TIMES.

       PROCEDURE DIVISION.
      * 4. SORTIE
           DISPLAY "BONJOUR, " MONDE.

           MOVE 3 TO NB(1)  MOVE 1 TO NB(2)  MOVE 4 TO NB(3)
           MOVE 1 TO NB(4)  MOVE 5 TO NB(5).

      * 5. CONDITION
           IF N > 3
              DISPLAY "GRAND"
           ELSE
              IF N = 3
                 DISPLAY "MOYEN"
              ELSE
                 DISPLAY "PETIT"
              END-IF
           END-IF.

      * 6. BOUCLE FOR
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
              COMPUTE K = NB(I) * 2
              DISPLAY K
           END-PERFORM.

      * 7. WHILE
           PERFORM UNTIL N = 0
              SUBTRACT 1 FROM N
           END-PERFORM.

      * 8. RECURSIVITE : permise depuis COBOL 2002 (RECURSIVE),
      *    mais l'esprit du langage reste iteratif :
           PERFORM VARYING K FROM 2 BY 1 UNTIL K > 5
              MULTIPLY K BY F
           END-PERFORM.
           DISPLAY F.

      * 9. ERREURS : clause dediee de l'instruction
           DIVIDE 10 BY D GIVING K
              ON SIZE ERROR DISPLAY "DIVISION IMPOSSIBLE"
           END-DIVIDE.

           STOP RUN.
```

---

## Assembleur (x86-64, NASM, Linux)

*Sous tous les autres : il n'y a NI boucle, NI condition, NI fonction — seulement des comparaisons, des sauts et une pile. Chaque structure des langages précédents se compile vers ces motifs. Version simplifiée et commentée.*

```nasm
section .data
    salut   db "Bonjour, Monde", 10    ; 10 = '\n'
    lsalut  equ $ - salut
    nombres dd 3, 1, 4, 1, 5

section .text
global _start

; 2. "Fonction" = etiquette + call/ret  (8. recursivite via la pile)
factorielle:                 ; argument dans rdi, resultat dans rax
    cmp rdi, 1
    jle .base                ; 5. condition = comparer puis SAUTER
    push rdi                 ; sauver k sur la pile
    dec rdi
    call factorielle         ; appel recursif
    pop rdi
    imul rax, rdi            ; rax = factorielle(k-1) * k
    ret
.base:
    mov rax, 1
    ret

_start:
    ; 4. sortie = appel systeme "write"
    mov rax, 1               ; syscall no 1 : write
    mov rdi, 1               ; sortie standard
    mov rsi, salut
    mov rdx, lsalut
    syscall

    ; 3. variables = registres (ou adresses memoire)
    mov rcx, 5               ; n = 5

    ; 7. while : test + saut (la boucle N'EXISTE PAS)
.tantque:
    cmp rcx, 0
    je .fin_tantque
    dec rcx
    jmp .tantque
.fin_tantque:

    ; 6. for = le meme motif, avec compteur
    xor rbx, rbx             ; i = 0
.pour:
    cmp rbx, 5
    jge .fin_pour
    mov eax, [nombres + rbx*4]
    add eax, eax             ; x * 2  (affichage omis : convertir
    inc rbx                  ;  un entier en texte = ~20 lignes !)
    jmp .pour
.fin_pour:

    mov rdi, 5
    call factorielle         ; rax = 120

    ; 9. erreurs : AUCUN mecanisme — une division par zero
    ;    declenche une interruption du processeur (SIGFPE)

    mov rax, 60              ; syscall exit
    xor rdi, rdi
    syscall
```

---

## Smalltalk

*L'objet pur (1972) : il n'y a QUE des objets et des messages. Même le `if` n'existe pas — `ifTrue:` est un message envoyé à un objet booléen, avec des blocs de code en argument.*

```smalltalk
"1. Commentaire (entre guillemets doubles !)"

| saluer n monde nombres ages factorielle |

"2. Fonction : ici un bloc (les méthodes vivent dans les classes)"
saluer := [ :nom | 'Bonjour, ', nom ].

"3. Variables (déclarées entre | |, non typées)"
n := 5.
monde := 'Monde'.
nombres := #(3 1 4 1 5).
ages := Dictionary newFrom: { 'Alice' -> 30. 'Bob' -> 25 }.

"4. Sortie"
Transcript showln: (saluer value: monde).

"5. Condition : ifTrue: est un MESSAGE envoyé au booléen"
n > 3
    ifTrue: [ Transcript showln: 'grand' ]
    ifFalse: [ n = 3
        ifTrue: [ Transcript showln: 'moyen' ]
        ifFalse: [ Transcript showln: 'petit' ] ].

"6. For : un message envoyé à la collection"
nombres do: [ :x | Transcript showln: (x * 2) printString ].

"7. While : un message envoyé au bloc-condition"
[ n > 0 ] whileTrue: [ n := n - 1 ].

"8. Récursivité (bloc auto-référent)"
factorielle := nil.
factorielle := [ :k |
    k <= 1 ifTrue: [ 1 ] ifFalse: [ k * (factorielle value: k - 1) ] ].
Transcript showln: (factorielle value: 5) printString.

"9. Erreurs : encore des messages"
[ Transcript showln: (10 / 0) printString ]
    on: ZeroDivide
    do: [ :e | Transcript showln: 'division impossible' ].
```

---

## Erlang

*Concurrence par acteurs et « let it crash » : les variables ne s'affectent qu'UNE fois, il n'y a pas de boucle (récursion obligatoire), et la vraie gestion d'erreur consiste à laisser le processus mourir sous l'œil d'un superviseur.*

```erlang
% 1. Commentaire
-module(rosetta).
-export([main/0]).

% 2. Fonction
saluer(Nom) -> "Bonjour, " ++ Nom.

% 8. Récursivité : LE mécanisme (par clauses avec gardes)
factorielle(K) when K =< 1 -> 1;
factorielle(K) -> K * factorielle(K - 1).

% 7. Le "while" se fait par récursion
decompte(0) -> ok;
decompte(N) -> decompte(N - 1).

main() ->
    % 3. Variables : affectation UNIQUE (N = 6 ensuite serait une erreur)
    N = 5,
    Monde = "Monde",
    Nombres = [3, 1, 4, 1, 5],
    Ages = #{"Alice" => 30, "Bob" => 25},
    _ = Ages,

    % 4. Sortie
    io:format("~s~n", [saluer(Monde)]),

    % 5. Condition
    if
        N > 3   -> io:format("grand~n");
        N =:= 3 -> io:format("moyen~n");
        true    -> io:format("petit~n")
    end,

    % 6. For : fonction appliquée à la liste
    lists:foreach(fun(X) -> io:format("~p~n", [X * 2]) end, Nombres),

    decompte(N),
    io:format("~p~n", [factorielle(5)]),

    % 9. try/catch existe, mais la philosophie est
    %    "let it crash" + supervision de processus
    try
        io:format("~p~n", [10 div 0])
    catch
        error:badarith -> io:format("division impossible~n")
    end.
```

---

## APL

*Tout est tableau, chaque opération a son symbole : le programme entier tient en quelques lignes denses. La boucle for est inutile — les opérations s'appliquent d'un coup à toute la structure. La factorielle ? Elle existe déjà : `!5`.*

```apl
⍝ 1. Commentaire

⍝ 3. Variables
n ← 5
monde ← 'Monde'
nombres ← 3 1 4 1 5

⍝ 2+4. Fonction (⍵ = argument) et sortie
saluer ← {'Bonjour, ', ⍵}
⎕ ← saluer monde

⍝ 5. Condition... par sélection dans un tableau !
⎕ ← (1+(n=3)+2×n>3) ⊃ 'petit' 'moyen' 'grand'

⍝ 6. "For" : inutile — l'opération est vectorielle
⎕ ← 2 × nombres        ⍝ double TOUTE la liste d'un coup

⍝ 7. While (rarissime) : ici par fonction récursive
decompte ← {⍵=0: ⍵ ⋄ ∇ ⍵-1}
decompte n

⍝ 8. Récursivité (∇ = auto-référence) — mais !5 existe déjà
factorielle ← {⍵≤1: 1 ⋄ ⍵ × ∇ ⍵-1}
⎕ ← factorielle 5      ⍝ ou simplement : !5

⍝ 9. Erreurs : garde dans la fonction
⎕ ← {0=⍵: 'division impossible' ⋄ 10÷⍵} 0
```

---

## Scheme

*Le Lisp minimaliste des universités. Son apport décisif : la récursion terminale est GARANTIE par le standard — un appel récursif en position finale ne consomme pas de pile. Le while y est donc officiellement superflu.*

```scheme
; 1. Commentaire

; 2. Fonction
(define (saluer nom)
  (string-append "Bonjour, " nom))

; 3. Variables
(define n 5)
(define monde "Monde")
(define nombres '(3 1 4 1 5))
(define ages '(("Alice" . 30) ("Bob" . 25)))

; 4. Sortie
(display (saluer monde)) (newline)

; 5. Condition
(cond ((> n 3) (display "grand"))
      ((= n 3) (display "moyen"))
      (else    (display "petit")))
(newline)

; 6. For
(for-each (lambda (x) (display (* x 2)) (newline)) nombres)

; 7. "While" : boucle nommée en récursion TERMINALE
;    (garantie sans croissance de pile : c'est une vraie boucle)
(let decompte ((k n))
  (unless (= k 0)
    (decompte (- k 1))))

; 8. Récursivité
(define (factorielle k)
  (if (<= k 1) 1 (* k (factorielle (- k 1)))))
(display (factorielle 5)) (newline)

; 9. Erreurs (R7RS)
(display
  (guard (e (#t "division impossible"))
    (/ 10 0)))
(newline)
```

---

## AWK

*Le modèle inversé : un programme AWK est une liste de règles « motif { action } » appliquées automatiquement à CHAQUE ligne du fichier d'entrée. La boucle principale est implicite — vous ne l'écrivez jamais.*

```awk
# 2. Fonction
function saluer(nom) { return "Bonjour, " nom }

# 8. Récursivité
function factorielle(k) {
    if (k <= 1) return 1
    return k * factorielle(k - 1)
}

BEGIN {
    # 3. Variables (jamais déclarées ; tableaux associatifs natifs)
    n = 5
    monde = "Monde"
    split("3 1 4 1 5", nombres, " ")
    ages["Alice"] = 30
    ages["Bob"] = 25

    # 4. Sortie
    print saluer(monde)

    # 5. Condition
    if (n > 3)       print "grand"
    else if (n == 3) print "moyen"
    else             print "petit"

    # 6. For
    for (i = 1; i <= 5; i++) print nombres[i] * 2

    # 7. While
    while (n > 0) n = n - 1

    print factorielle(5)

    # 9. Vérification manuelle (10/0 = erreur fatale)
    d = 0
    if (d == 0) print "division impossible"
}

# La vraie nature d'AWK : une règle par ligne d'entrée —
# la boucle n'est écrite nulle part :
# $1 > 100 { print "grosse valeur :", $0 }
```

---

## ALGOL 60

*L'ancêtre commun (1960) : c'est ici que naissent les blocs `begin/end`, les déclarations de types, la portée lexicale et la récursivité autorisée — tout ce que C, Pascal et Java hériteront. Le document saute de Fortran à C ; voici le chaînon manquant.*

```algol60
begin
    comment 1. Commentaire ;

    integer n;
    integer i;
    integer array nombres[1:5];

    comment 8. Recursivite : ALGOL 60 est le premier grand
            langage a la permettre explicitement ;
    integer procedure factorielle(k); value k; integer k;
    factorielle := if k <= 1 then 1 else k * factorielle(k - 1);

    n := 5;
    nombres[1] := 3; nombres[2] := 1; nombres[3] := 4;
    nombres[4] := 1; nombres[5] := 5;

    comment 4. Sortie (les E/S dependaient du compilateur) ;
    outstring(1, "Bonjour, Monde");

    comment 5. Condition — et le if-expression existe deja ;
    if n > 3 then outstring(1, "grand")
    else if n = 3 then outstring(1, "moyen")
    else outstring(1, "petit");

    comment 6. For ;
    for i := 1 step 1 until 5 do
        outinteger(1, nombres[i] * 2);

    comment 7. While (variante du for) ;
    for i := 0 while n > 0 do n := n - 1;

    outinteger(1, factorielle(5));

    comment 9. Pas de gestion d erreur : verification manuelle ;
end
```

---

## PostScript

*Chaque page imprimée dans les années 90 était un programme : PostScript est un langage complet, à pile et postfixé comme Forth, que votre imprimante exécutait.*

```postscript
% 1. Commentaire

% 2. "Fonction" = procédure définie dans un dictionnaire
/factorielle {                    % 8. récursivité
    dup 1 le
    { pop 1 }
    { dup 1 sub factorielle mul }
    ifelse
} def

% 3. Variables (def) ; tableaux et dictionnaires natifs
/n 5 def
/monde (Monde) def
/nombres [3 1 4 1 5] def
/ages << /Alice 30 /Bob 25 >> def

% 4. Sortie (console)
(Bonjour, Monde) print

% 5. Condition (postfixée, procédures en argument)
n 3 gt
{ (grand) print }
{ n 3 eq { (moyen) print } { (petit) print } ifelse }
ifelse

% 6. For : forall applique une procédure à chaque élément
nombres { 2 mul = } forall        % = affiche un nombre

% 7. While : boucle infinie + exit
{ n 0 le { exit } if  /n n 1 sub def } loop

5 factorielle =

% 9. Erreurs : stopped (l'ancêtre du try)
{ 10 0 div = } stopped
{ (division impossible) print } if
```

---

## Verilog

*Le grand renversement : Verilog ne décrit pas un calcul mais un CIRCUIT électronique. Hors des blocs de simulation, tout « s'exécute » en parallèle — la notion même de séquence disparaît.*

```verilog
// Ceci décrit du matériel : le bloc initial est séquentiel
// (simulation), mais un vrai design est massivement parallèle.

module rosetta;

  // 3. Variables = registres et fils
  integer n, i, d;
  integer nombres [0:4];

  // 2. "Fonction" (synthétisable en logique combinatoire)
  function integer doubler(input integer x);
    doubler = x * 2;
  endfunction

  // 8. Récursivité : possible en simulation (automatic)
  function automatic integer factorielle(input integer k);
    if (k <= 1) factorielle = 1;
    else factorielle = k * factorielle(k - 1);
  endfunction

  initial begin
    n = 5;
    nombres[0]=3; nombres[1]=1; nombres[2]=4;
    nombres[3]=1; nombres[4]=5;

    // 4. Sortie (simulation)
    $display("Bonjour, Monde");

    // 5. Condition
    if (n > 3) $display("grand");
    else if (n == 3) $display("moyen");
    else $display("petit");

    // 6. For
    for (i = 0; i < 5; i = i + 1)
      $display("%0d", doubler(nombres[i]));

    // 7. While
    while (n > 0) n = n - 1;

    $display("%0d", factorielle(5));

    // 9. Pas d'exceptions : une division par zéro
    //    produit 'x (valeur inconnue), à détecter soi-même
    d = 0;
    if (d == 0) $display("division impossible");
  end

endmodule
```

---

## Rockstar

*Le clin d'œil final : Rockstar (2018) est un vrai langage, Turing-complet, dont les programmes ressemblent à des paroles de power ballad. « Shout » affiche, « Knock down » décrémente. Boucle bouclée pour ce document : programmer en langue (presque) naturelle, c'est déjà possible — syntaxe indicative, à vérifier dans un interpréteur.*

```rockstar
(Un programme Rockstar est une chanson)

Shout "Hello, World!"

My count is 5

If my count is greater than 3
Shout "big"

While my count is greater than nothing
Knock my count down

Factorial takes a number
If a number is less than 2
Give back 1

Put a number minus 1 into the rest
Give back a number times Factorial taking the rest

Shout Factorial taking 5
```

---

## Grille de lecture comparative

| Langage | Blocs | Typage | Dico natif | Erreurs | Particularité révélée |
|---|---|---|---|---|---|
| Python | indentation | dynamique inféré | oui | exceptions | le plus proche du pseudo-code |
| JavaScript | `{ }` | dynamique | objets | exceptions | `10/0` = `Infinity`, pas d'erreur |
| C | `{ }` | statique explicite | non | aucune | la machine à nu |
| Java | `{ }` | statique explicite | `Map` | exceptions | tout est classe |
| Kotlin | `{ }` | statique inféré | `mapOf` | exceptions | Java sans cérémonie |
| Go | `{ }` | statique inféré | oui | valeurs | une seule boucle : `for` |
| Rust | `{ }` | statique inféré | `HashMap` | `Result`/`Option` | immuable par défaut |
| Swift | `{ }` | statique inféré | oui | `throws`/`do-catch` | sécurité explicite |
| Ruby | `end` | dynamique | oui | exceptions | tout est expression |
| PHP | `{ }` | dynamique | tableau assoc. | exceptions | le tableau universel |
| Perl | `{ }` | dynamique | hash `%` | `eval`/`$@` | les sigils typent |
| Lua | `end` | dynamique | table | `pcall` | une seule structure : la table |
| Bash | `fi`/`done` | texte | assoc. (v4) | codes de retour | tout est commande |
| Pascal | `begin/end` | statique explicite | non | vérif. manuelle | déclarations séparées |
| Haskell | indentation | statique inféré | `Data.Map` | types (`Maybe`) | pas de while, pas de mutation |
| Common Lisp | `( )` | dynamique | alist | conditions | le code est l'arbre syntaxique |
| Fortran | `end` | statique explicite | non | vérif. manuelle | le doyen scientifique (1957) |
| BASIC | n° de ligne | dynamique | non | `ON ERROR GOTO` | GOTO roi ; récursivité impossible |
| Ada | `begin/end` | statique très fort | non (std) | exceptions | conçu pour les systèmes critiques |
| Forth | mots `: ;` | aucun (pile) | non | `throw/catch` | postfixé, tout passe par la pile |
| Julia | `end` | dynamique fort | `Dict` | exceptions | vectorisation par `.`, calcul scientifique |
| C# | `{ }` | statique inféré | `Dictionary` | exceptions | `10/0` littéral refusé à la compilation |
| OCaml | `let/in` | statique inféré | listes assoc. | `option` + `match` | `rec` explicite, immuable par défaut |
| Prolog | règles `:-` | dynamique | faits | `catch/throw` | pas de séquence : logique et backtracking |
| SQL | requêtes | schéma de tables | tables | `NULLIF`/`NULL` | déclaratif par défaut : pensée ensembliste |
| COBOL | `DIVISION` | images `PIC` | non | `ON SIZE ERROR` | l'anglais administratif (1959) |
| Assembleur | étiquettes | aucun | non | interruptions | il n'existe que des sauts |
| Smalltalk | blocs `[ ]` | dynamique | `Dictionary` | messages `on:do:` | même le if est un message |
| Erlang | clauses `;` `.` | dynamique | map `#{}` | « let it crash » | affectation unique, récursion obligatoire |
| APL | symboles | tableaux | non | gardes | tout est tableau : `!5` suffit |
| Scheme | `( )` | dynamique | alist | `guard` | récursion terminale garantie |
| AWK | motif `{ }` | dynamique | tabl. assoc. | vérif. manuelle | la boucle principale est implicite |
| ALGOL 60 | `begin/end` | statique | non | aucune | l'ancêtre commun (1960) |
| PostScript | proc. `{ }` | dynamique | `<< >>` | `stopped` | chaque page imprimée était un programme |
| Verilog | `module` | bits/entiers | non | valeur `x` | décrit un circuit : tout est parallèle |
| Rockstar | strophes | dynamique | non | aucune | le code est une chanson |
