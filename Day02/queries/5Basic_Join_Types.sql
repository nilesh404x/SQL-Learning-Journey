SELECT * FROM customers
SELECT * FROM orders

------------COMBINING DATA---------------

----------------NO JOIN--------------------
--Retrive all data from customers and orders in two different results
SELECT * FROM customers;
SELECT * FROM orders;

----------------INNER JOIN------------------
--Get all customers along with their orders but only for customers who have placed an order
 SELECT * FROM customers INNER JOIN orders ON id = customer_id
 SELECT id,first_name,order_id,sales FROM customers INNER JOIN orders ON id = customer_id

 --We can tell from which table we have to select id and all  c.=customer table & o.=oredes table
 SELECT c.id,
 c.first_name,
 o.order_id,
 o.sales FROM customers AS c INNER JOIN orders AS o ON id = customer_id

 --------------LEFT JOIN--------------------
 --Get all customers along with their orders including those without order
 SELECT * FROM customers LEFT JOIN orders ON id = customer_id

 ---------------RIGHT JOIN------------------
 --Get all customers along with their orders including orders without matching customers
 SELECT * FROM customers RIGHT JOIN orders ON id = customer_id

 ---------------FULL JOIN-------------------
 --Get all customers and all orders even if theres no match
 SELECT * FROM customers FULL JOIN orders ON id = customer_id