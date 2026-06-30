------------Filtering Data----------------
------------Comparision Operator----------

--Retrive all customers from Germany
SELECT * FROM customers WHERE country='Germany'

--Retrive all customers Who are not from Germany
SELECT * FROM customers WHERE country!='Germany'

--Retrive all customers with a score greater than 500
SELECT * FROM customers WHERE score>500

--Retrive all customers with a score 500 or more
SELECT * FROM customers WHERE score>=500

------------Logical Operator----------

--Retrive all customers who are from the USA AND have a score greater than 500
SELECT * FROM customers WHERE country='USA' AND score>500

--Retrive all customers who are either from the USA OR have a score greater than 500
SELECT * FROM customers WHERE country='USA' OR score>500

--Retrive all customers with a score NOT less than 500
SELECT * FROM customers WHERE score>=500 --same can be written in NOT
SELECT * FROM customers WHERE NOT score<500

------------Range Operator----------

--Retrive all customers whose score falls in the range betwee 100 and 500
SELECT * FROM customers WHERE score BETWEEN 100 AND 500 --ALSO can be written as
SELECT * FROM customers WHERE score >=100 AND score <= 500

------------Membership Operator----------

--Retrive all customers from either Germany or USA
SELECT * FROM customers WHERE country = 'Germany' OR country='USA' --ALSO can be written as
SELECT * FROM customers WHERE country IN ('Germany','USA')

--Retrive all customers WHICH are not from Germany or USA
SELECT * FROM customers WHERE country NOT IN ('Germany','USA')

------------Search Operator----------

--Find all customers whose first name starts with 'M'
SELECT * FROM customers WHERE first_name LIKE 'M%'

--Find all customers whose first name ENDS with 'n'
SELECT * FROM customers WHERE first_name LIKE '%n'

--Find all customers whose first name has 'r' in the 3rd position
SELECT * FROM customers WHERE first_name LIKE '__r%' --2 underscore then r