------------------------------------------------------------
-- Day 4: GROUP BY, HAVING, and Subqueries
------------------------------------------------------------

-- 1️⃣ GROUP BY Example
-- Count how many students are in each course
SELECT
  course,
  COUNT(*) AS total_students
FROM students
GROUP BY course
ORDER BY total_students DESC;

------------------------------------------------------------

-- 2️⃣ Using GROUP BY with Aggregates
-- Find the average age per course
SELECT
  course,
  ROUND(AVG(age), 1) AS avg_age,
  MIN(age) AS youngest,
  MAX(age) AS oldest,
  CASE
    WHEN AVG(age) < 20 THEN 'TEENS'
    WHEN AVG(age) BETWEEN 20 AND 25 THEN 'YOUNG ADULTS'
    ELSE 'ADULTS'
  END AS age_group
FROM students
GROUP BY course
ORDER BY avg_age DESC;
------------------------------------------------------------

-- 3️⃣ HAVING (Filter Groups)
-- Show only courses with more than 1 student
SELECT
  course,
  COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING AVG(age) > 20 AND COUNT(*) > 0
ORDER BY total_students DESC;

------------------------------------------------------------

-- 4️⃣ Subquery (Scalar)
-- Find students older than the average age
SELECT *
FROM students
WHERE age > (SELECT AVG(age) FROM students)
ORDER BY age DESC;

------------------------------------------------------------

-- 5️⃣ Subquery (IN)
-- Get students who are in the same course as ‘Alice’
SELECT *
FROM students
WHERE course IN (
  SELECT course
  FROM students
  -- Find the course(s) that Cynthia is enrolled in
  WHERE first_name = 'Cynthia'
)
-- Exclude Cynthia herself from the results
AND first_name <> 'Cynthia';

------------------------------------------------------------

-- 6️⃣ Subquery in SELECT (Inline Expression)
-- Show each student's age compared to the average
SELECT
  first_name,
  age,
  (SELECT ROUND(AVG(age), 1) FROM students) AS average_age,
  age - (SELECT ROUND(AVG(age), 1) FROM students) AS difference
FROM students;

------------------------------------------------------------

-- 7️⃣ Subquery in FROM (Derived Table)
-- Display courses with their average age using an alias
SELECT
  t.course,
  t.avg_age
FROM (
  SELECT course, AVG(age) AS avg_age
  FROM students
  GROUP BY course
) t
WHERE t.avg_age > 20
ORDER BY t.avg_age DESC;
