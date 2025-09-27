CREATE TABLE students (
  student_id NUMBER PRIMARY KEY,
  first_name VARCHAR2(50),
  last_name  VARCHAR2(50),
  age        NUMBER,
  course     VARCHAR2(50)
);
INSERT INTO students VALUES (1, 'Alice', 'Kamau', 20, 'Database Systems');
INSERT INTO students VALUES (2, 'Brian', 'Otieno', 22, 'Networking');
INSERT INTO students VALUES (3, 'Cynthia', 'Mwangi', 19, 'Database Systems');
INSERT INTO students VALUES (4, 'David', 'Mutua', 21, 'Software Engineering');
INSERT INTO students VALUES (5, 'Emily', 'Njeri', 23, 'Cybersecurity');
COMMIT;
SELECT * FROM students;
