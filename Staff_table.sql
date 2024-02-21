use db;

CREATE TABLE staff(
id INT PRIMARY KEY,
name VARCHAR(20),
subject VARCHAR(20),
age INT
);

INSERT INTO staff VALUES
(51,"ram","marathi",29),
(52,"sham","hindi",30),
(53,"ganesh","english",33),
(54,"vishal","math",30);

ALTER TABLE staff
ADD COLUMN salary INT;

SELECT * FROM staff;

ALTER TABLE staff
RENAME TO office_staff;

ALTER TABLE staff
DROP COLUMN salary ;

ALTER TABLE office_staff
CHANGE id staff_id INT ;

ALTER TABLE office_staff
MODIFY age INT NOT NULL;

TRUNCATE TABLE office_staff;

SELECT * FROM office_staff;