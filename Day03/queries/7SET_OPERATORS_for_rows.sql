SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
-----------SET OPERATORS (FOR ROWS)-------------------

---------------UNION-----------------------
SELECT FirstName,LastName FROM Sales.Customers
UNION
SELECT FirstName,LastName FROM Sales.Employees

---------------UNION ALL -----------------------
--Combine the data from employees and customers into one table,including duplicates
SELECT FirstName,LastName FROM Sales.Customers
UNION
SELECT FirstName,LastName FROM Sales.Employees


---------------EXCEPT-----------------------
--Find the employees who are not customers at the same time
SELECT FirstName,LastName FROM Sales.Customers
EXCEPT
SELECT FirstName,LastName FROM Sales.Employees


-----------------INTERSECT------------------
--Find the employees who are also customers
SELECT FirstName,LastName FROM Sales.Customers
INTERSECT
SELECT FirstName,LastName FROM Sales.Employees


--Orders data are stored in seperate tables(Orders and OrdersArchive)
--Combine all orders data into one report without duplicate
SELECT *FROM Sales.Orders
SELECT *FROM Sales.OrdersArchive

SELECT *FROM Sales.Orders
UNION
SELECT *FROM Sales.OrdersArchive
