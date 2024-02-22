USE db;

-- Create the 'student2' table
CREATE TABLE student2 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the 'student2' table
INSERT INTO student2 VALUES
    (101, "ram"),
    (102, "sham"),
    (103, "ganesh");

-- Select all records from the 'student2' table
SELECT * FROM student2;

-- Create the 'course' table
CREATE TABLE course(
    student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

-- Insert data into the 'course' table
INSERT INTO course VALUES
    (102, "english"),
    (105, "math"),
    (103, "science"),
    (104, "computer science");

-- Select all records from the 'course' table
SELECT * FROM course;

-- Perform INNER JOIN on 'student2' and 'course' tables
SELECT *
FROM student2
INNER JOIN course
ON student2.student_id = course.student_id;

-- Perform LEFT JOIN on 'student2' and 'course' tables
SELECT *
FROM student2 AS a
LEFT JOIN course AS b
ON a.student_id = b.student_id; 

-- Perform RIGHT JOIN on 'student2' and 'course' tables
SELECT *
FROM student2 AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;

-- Perform FULL OUTER JOIN on 'student2' and 'course' tables using UNION
SELECT *
FROM student2 AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student2 AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;

-- Select records from 'student2' table where there is no matching record in 'course' table
SELECT *
FROM student2 AS a
LEFT JOIN course AS b
ON a.student_id = b.student_id
WHERE b.student_id IS NULL;

-- Select records from 'course' table where there is no matching record in 'student2' table
SELECT *
FROM student2 AS a
RIGHT JOIN course AS b
ON a.student_id = b.student_id
WHERE a.student_id IS NULL;

-- Create the 'employee' table
CREATE TABLE employee( 
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

-- Insert data into the 'employee' table
INSERT INTO employee VALUES
    (101, "ram", 103),
    (102, "sham", 104),
    (103, "vishal", null),
    (104, "ganesh", 103);

-- Select all records from the 'employee' table
SELECT * FROM employee;

-- Perform a self-JOIN on the 'employee' table to find manager names and their corresponding employees
SELECT a.name AS manager_name, b.name
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id; 

-- Retrieve a distinct list of names from the 'employee' table using UNION
SELECT name FROM employee
UNION 
SELECT name FROM employee;

-- Retrieve a distinct list of names from the 'employee' table using UNION ALL
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;
