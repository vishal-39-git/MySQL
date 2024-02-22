USE db;

-- Create the 'staff' table
CREATE TABLE staff (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    subject VARCHAR(20),
    age INT
);

-- Insert data into the 'staff' table
INSERT INTO staff VALUES
    (51, "ram", "marathi", 29),
    (52, "sham", "hindi", 30),
    (53, "ganesh", "english", 33),
    (54, "vishal", "math", 30);

-- Add a new column 'salary' to the 'staff' table
ALTER TABLE staff
ADD COLUMN salary INT;

-- Select all records from the 'staff' table
SELECT * FROM staff;

-- Remove the 'salary' column from the 'staff' table
ALTER TABLE staff
DROP COLUMN salary;

-- Rename the 'staff' table to 'office_staff'
ALTER TABLE staff
RENAME TO office_staff;

-- Change the name of the 'id' column to 'staff_id' in the 'office_staff' table
ALTER TABLE office_staff
CHANGE id staff_id INT;

-- Modify the 'age' column in the 'office_staff' table to disallow NULL values
ALTER TABLE office_staff
MODIFY age INT NOT NULL;

-- Remove all records from the 'office_staff' table
TRUNCATE TABLE office_staff;

-- Select all records from the 'office_staff' table
SELECT * FROM office_staff;
