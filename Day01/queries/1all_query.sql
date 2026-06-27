--TO VIEW THE TABLE
SELECT * FROM customers

SELECT
first_name,country,score
FROM customers

--Retrive customers with a score not equal to 0
SELECT * FROM customers WHERE country = 'USA'

--Retrieve all customers and soet the results by the highest score first
SELECT * FROM customers ORDER BY score DESC
SELECT * FROM customers ORDER BY country ASC,score DESC

--fIND THE TOTAL SCORE FOR EACH COUNTRY
SELECT country,SUM(score) FROM customers GROUP BY country
SELECT country,SUM(score) As total_score FROM customers GROUP BY country
SELECT country,first_name, SUM(score) As total_score FROM customers GROUP BY country,first_name

--Find the total score and total number of costumers for each country
SELECT country, SUM(score) As total_score, count(id) AS total_customers FROM customers GROUP BY country 

--COUNTRY AND TOTAL SCORE USING HAVING
SELECT country,SUM(score) AS TOTAL_SCORE FROM customers GROUP BY country HAVING SUM(score)>800

/* fIND THE AVERAGE SCORE FOR EACH COUNTRY 
CONSIDERING ONLY CUSTOMERS WITH A SCORE NOT EQUAL TO 0
AND RETURN ONLY THOSE COUNTRIES WITH AN AVERAGE SCORE GREATER THAN 430
*/
SELECT country, 
AVG(score) AS Average FROM customers 
WHERE score!=0
GROUP BY country HAVING AVG(score)>430

--Return unique list of all countries
SELECT DISTINCT country FROM customers

--Retrive only 3 Customers 
SELECT TOP 3 * FROM customers

--Retrive only 3 Customers with highest scores
SELECT TOP 3 * FROM customers ORDER BY score DESC

SELECT * FROM orders

--Get the most two most recent orders
SELECT TOP 2 * FROM orders ORDER BY order_date DESC


