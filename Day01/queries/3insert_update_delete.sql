INSERT INTO customers(id,first_name,country,score)
VALUES
(6,'Anna','USA',NULL),
(7,'Sam','NULL',100)
SELECT * FROM customers

--updating null because i have putted null in inverted comma thats make a string
UPDATE customers
SET country = NULL
WHERE id = 7;

--Insert data from customers into persons
INSERT INTO persons (id,person_name,birth_date,phone)
SELECT
ID,
first_name,
NULL,
'Unknown'
FROM customers

SELECT * FROM customers
SELECT * FROM persons

--change the score of customer 7 to 0 and update the country to UK
 UPDATE customers 
 SET score = 0,country='UK'
 WHERE id = 7

 --Delete all customers with an ID greater than 5
 DELETE FROM customers
 WHERE id>5