use db;

-- Creating a table named 'student3'
CREATE TABLE student3(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Inserting data into the 'student3' table
INSERT INTO student3 
(rollno,name,marks,city)
VALUES
(101,"ram",78,"pune"),
(102,"sham",93,"mumbai"),
(103,"ganesh",85,"mumbai"),
(104,"vishal",96,"delhi"),
(105,"vijay",92,"delhi"),
(106,"kunal",82,"delhi");

-- Displaying all records from the 'student3' table
SELECT * FROM student3;

-- Static QUERY: Finding the average marks of the class
SELECT AVG(marks)
FROM student3;

-- Static QUERY: Finding names and marks of students with marks greater than the average
SELECT name,marks
FROM student3
WHERE marks > 87.6667;

-- Dynamic QUERY: Finding names and marks of students with marks greater than the average
SELECT name,marks
FROM student3
WHERE marks >(SELECT AVG(marks) FROM student3);

-- Static QUERY: Finding even roll numbers
SELECT rollno
FROM student3
WHERE rollno % 2 = 0;

-- Static QUERY: Finding names of students with specific roll numbers
SELECT name
FROM student3
WHERE rollno IN (102,104,106);

-- Dynamic QUERY: Finding names and roll numbers of students with even roll numbers
SELECT name,rollno
FROM student3
WHERE rollno IN (SELECT rollno FROM student3 WHERE rollno % 2 = 0);

-- Static QUERY: Finding students from Delhi
SELECT *
FROM student3
WHERE city ="delhi";

-- Static QUERY: Finding the maximum marks of students with specific names
SELECT MAX(marks)
FROM student3
WHERE name IN ("vishal","vijay","kunal");

-- Dynamic QUERY: Finding the maximum marks of students from Delhi using a subquery
SELECT MAX(marks)
FROM (SELECT * FROM student3 WHERE city = "delhi") as temp;

-- Creating a view named 'view1' with specific columns
CREATE VIEW view1 AS
SELECT rollno,name,marks FROM student3;

-- Displaying all records from the 'view1' view
SELECT * FROM view1;

-- Static QUERY: Finding records from 'view1' where the name is "vishal"
SELECT *
FROM view1
WHERE name = "vishal";

-- Dropping the 'view1' view
DROP VIEW view1;
