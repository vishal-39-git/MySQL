USE db;
CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR (50),
mode VARCHAR(50),
city VARCHAR(50)
);
INSERT INTO payment
(customer_id,customer,mode,city)
VALUES
(101,"ram","netbanking","pune"),
(102,"sham","credit card","mumbai"),
(103,"ganesh","credit card","delhi"),
(104,"vishal","netbanking","naraynpur"),
(105,"dinesh","credit card","manipur"),
(106,"somnath","debit card","ramgad"),
(107,"santosh","debit card","koyna"),
(108,"vishal","netbanking","bhulashavr"),
(109,"sahil","netbanking","supa"),
(1010,"kunal","credit card","jejuri");

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;	/*show payment mode and total count of payment according to each mode */

SELECT city, COUNT(customer),customer
FROM payment
WHERE customer = "vishal"
GROUP BY city;/*Show the count of customers for each city where the customer's name is "vishal"*/

SET SQL_SAFE_UPDATES = 0;/*Disable safe updates to allow potentially unsafe queries*/

UPDATE payment
SET city ="morgav"
WHERE city ="jejuri";/*Update the city from "jejuri" to "morgav"*/

UPDATE payment
SET customer="pradip"
WHERE customer_id = 106;/*Update the customer name to "pradip" where customer_id is 106*/

UPDATE payment
SET customer_id = customer_id - 1;/*Decrement customer_id for all rows*/

DELETE FROM payment
WHERE mode = "debit card";/*Delete rows where the payment mode is "debit card"*/

select * from payment;/*Select all rows from the 'payment' table*/