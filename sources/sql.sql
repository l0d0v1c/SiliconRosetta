-- 1. Comment

-- 3. "Variables" = tables
CREATE TABLE numbers (x INTEGER);
INSERT INTO numbers VALUES (3), (1), (4), (1), (5);

CREATE TABLE ages (name TEXT, age INTEGER);
INSERT INTO ages VALUES ('Alice', 30), ('Bob', 25);

-- 4. Output
SELECT 'Hello, ' || 'World' AS greeting;

-- 5. Condition: CASE (by value) or WHERE (by filtering)
SELECT CASE
         WHEN 5 > 3 THEN 'big'
         WHEN 5 = 3 THEN 'medium'
         ELSE 'small'
       END AS size;

-- 6. "For loop": NONEXISTENT — one operation on the whole set
SELECT x * 2 AS double FROM numbers;

-- 7+8. While and recursion: the recursive CTE
WITH RECURSIVE fact(k, f) AS (
    SELECT 1, 1
    UNION ALL
    SELECT k + 1, f * (k + 1) FROM fact WHERE k < 5
)
SELECT f FROM fact WHERE k = 5;

-- 9. Error avoided by construction: NULLIF turns
--    division by zero into NULL
SELECT COALESCE(CAST(10 / NULLIF(0, 0) AS TEXT),
                'cannot divide');
