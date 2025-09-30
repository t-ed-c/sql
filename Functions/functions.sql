------------------------------------------------------------
-- Day 3: SQL Functions & Expressions
------------------------------------------------------------

-- 1️⃣ Aggregate Functions
SELECT
  COUNT(*) AS total_students,
  AVG(age) AS average_age,
  MIN(age) AS youngest,
  MAX(age) AS oldest
FROM students;

------------------------------------------------------------

-- 2️⃣ Count students per course (GROUP BY)
SELECT
  course,
  COUNT(*) AS num_students,
  AVG(age) AS avg_age
FROM students
GROUP BY course
ORDER BY num_students DESC;

------------------------------------------------------------

-- 3️⃣ String Functions
SELECT
  student_id,
  UPPER(first_name) AS upper_name,
  LOWER(last_name) AS lower_name,
  LENGTH(first_name) AS name_length,
  SUBSTR(course, 1, 5) AS course_prefix
FROM students;

------------------------------------------------------------

-- 4️⃣ Numeric Expressions
-- Increase everyone's age by 1 (temporary display)
SELECT
  first_name,
  last_name,
  age,
  age + 1 AS age_next_year
FROM students;

------------------------------------------------------------

-- 5️⃣ Date Functions
-- Using SYSDATE for current date
SELECT
    first_name,
    SYSDATE AS today,
    ADD_MONTHS(SYSDATE, 6) AS six_months_later,
    SYSDATE + 10 AS ten_days_later,
    ADD_MONTHS(SYSDATE, 12) AS one_year_later
FROM students;

-- Find how many months between two dates
SELECT
  MONTHS_BETWEEN(SYSDATE, TO_DATE('2023-09-01','YYYY-MM-DD')) AS months_since_joining
FROM dual;

------------------------------------------------------------

-- 6️⃣ Aliasing & Combined Expressions
SELECT
  first_name || ' ' || last_name AS full_name,
  course,
  age,
  (age * 12) AS age_in_months
FROM students
ORDER BY age_in_months DESC;

------------------------------------------------------------
-- 7️⃣ Exercises

SELECT
  course,
  ROUND(AVG(age), 1) AS average_age
FROM students
GROUP BY course
ORDER BY average_age DESC;


SELECT
  first_name || ' ' || last_name AS full_name,
  LENGTH(first_name || last_name) AS name_length,
  course
FROM students
ORDER BY name_length DESC;


SELECT
  first_name || ' ' || last_name AS full_name,
  age,
  age * 365 * 24 * 3600 AS age_in_seconds,
   ROUND(AVG(age) OVER (), 1) AS overall_avg_age,
   
  CASE
    WHEN age < 20 THEN 'Teen'
    WHEN age BETWEEN 20 AND 22 THEN 'Young Adult'
    ELSE 'Adult'
  END AS age_group
FROM students
ORDER BY age;



