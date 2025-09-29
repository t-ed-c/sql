-- 1. Simple filter
SELECT * FROM students WHERE age > 20;

-- 2. Combining conditions
SELECT * FROM students WHERE course = 'Database Systems' AND age < 21;

-- 3. BETWEEN
SELECT * FROM students WHERE age BETWEEN 20 AND 22;

-- 4. IN
SELECT * FROM students WHERE course IN ('Database Systems', 'Networking');

-- 5. LIKE
SELECT * FROM students WHERE first_name LIKE 'A%';

-- 6. ORDER BY
SELECT * FROM students ORDER BY age DESC;
