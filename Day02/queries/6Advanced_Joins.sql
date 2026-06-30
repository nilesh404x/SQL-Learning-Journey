-----------ADVANCED JOIN TYPES-----------

-----------LEFT ANTI JOIN---------------
--Get all customers who haven't place any order //WHO HAVENT ORDER ANYTHING 
SELECT * FROM customers LEFT JOIN orders ON id=customer_id WHERE customer_id IS NULL

-----------RIGHT ANTI JOIN----------------
--Get all orders without matching customers
SELECT * FROM customers AS c RIGHT JOIN orders AS o ON c.id = o.customer_id WHERE c.id IS NULL

------------FULL ANTI JOIN----------------
--Find customers without orders and orders without customers
SELECT * FROM orders AS o FULL JOIN  customers AS c ON c.id = o.customer_id WHERE c.id IS NULL OR o.customer_id IS NULL

------------ONLY MATCHING WITHOUT USING INNER JOIN-----------
--GET ALL CUSTOMERS ALONG WITH THEIR ORDERS BUT ONLY FOR CUSTOMERS WHO HAVE PLACED AN ORDER
SELECT * FROM customers AS c LEFT JOIN  orders AS o ON c.id = o.customer_id WHERE o.customer_id IS NOT NULL

-----------------CROSS JOIN----------------------
--Generate all posible combinations of customers and orders
                                             