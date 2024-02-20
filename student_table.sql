use db;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(10)
);
INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"ram",78,"C","pune"),
(102,"ganesh",93,"A","mumbai"),
(103,"sham",85,"B","mumbai"),
(104,"vishal",96,"A","delhi"),
(105,"rohan",12,"F","delhi"),
(106,"deepak",82,"B","delhi");

SELECT name,marks FROM student;/*show only name and marks columns*/

SELECT DISTINCT city FROM student; /*do not show  duplicate records only show unique values */

SELECT * FROM student	/*show students info whose marks is greater than 80*/
WHERE (marks > 80); 	/*WHERE claus*/

SELECT * FROM student
WHERE (marks > 80 AND city ="mumbai");/*show students whoes marks is greater than 80 and his city is mumbai*/

SELECT * FROM student
WHERE marks = 93;/*show whoes marks is 93 */

SELECT * FROM student
WHERE marks BETWEEN 80 AND 90;/*show students info whoese marks between 80 and 90*/

SELECT * FROM student
WHERE city in("pune","mumbai");/*show students info whoese city is pune and mumbai*/

SELECT * FROM student
WHERE city NOT in("pune","mumbai");/*show students info whoese city is not pune and mumbai*/

SELECT * FROM student LIMIT 3;/*only show 3 student info*/

SELECT * FROM student
ORDER BY city ASC;/*show students info in ascending order of city*/

SELECT * FROM student
ORDER BY marks DESC;/*show students info in descending order of marks*/

/*Aggregate Functions*/
SELECT MAX(marks)
FROM student;	/*show student whoese marks is max*/

SELECT MIN(marks)
FROM student;	/*show student whoese marks is min*/

SELECT AVG(marks)
FROM student;	/*show avrage of all class students marks*/

SELECT COUNT(rollno)
FROM student;	/*return the count of students*/

SELECT Sum(marks)
FROM student;	/*return the sum of all students marks*/

/*Group By Clause*/
SELECT city,COUNT(rollno)
FROM student
GROUP BY city; /*return city and how many students are in that city */

