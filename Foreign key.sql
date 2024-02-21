USE db;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO dept
(id, name)
VALUES
(101, "English"),
(102, "IT");

SELECT * FROM dept;

-- Create a 'teacher' table with columns 'id', 'name', and 'dept_id'
-- Adding a foreign key constraint referencing 'dept' table on 'dept_id'
CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Insert data into the 'teacher' table
INSERT INTO teacher
VALUES
(101, "ram", 101),
(102, "sham", 102);

-- Select all records from the 'teacher' table
SELECT * FROM teacher;

-- Update the 'dept' table, set id to 103 where id is 102
UPDATE dept
SET id = 103
WHERE id = 102;

-- Select all records from the 'dept' table after the update
SELECT * FROM dept;
