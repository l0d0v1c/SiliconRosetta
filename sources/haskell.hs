import qualified Data.Map as Map

-- 2. Function (pure, explicit type signature)
greet :: String -> String
greet name = "Hello, " ++ name

-- 8. Recursion: THE way to repeat (no while!)
factorial :: Integer -> Integer
factorial k
  | k <= 1    = 1
  | otherwise = k * factorial (k - 1)

-- 7. "While" is simulated by recursion
countdown :: Int -> Int
countdown 0 = 0
countdown n = countdown (n - 1)

-- 9. No exceptions: failure is a type (Maybe)
divide :: Int -> Int -> Maybe Int
divide _ 0 = Nothing
divide a b = Just (a `div` b)

main :: IO ()
main = do
  -- 3. Variables: immutable, inferred types
  let n = 5 :: Int
      world = "World"
      numbers = [3, 1, 4, 1, 5]
      ages = Map.fromList [("Alice", 30), ("Bob", 25)]

  -- 4. Output
  putStrLn (greet world)

  -- 5. Condition (expression, never a statement)
  putStrLn (if n > 3 then "big"
            else if n == 3 then "medium"
            else "small")

  -- 6. "For": apply a function to every element
  mapM_ (print . (* 2)) numbers

  -- 9. Handle the error case by pattern matching
  case divide 10 0 of
    Just r  -> print r
    Nothing -> putStrLn "cannot divide"
