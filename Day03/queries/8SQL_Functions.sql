--------------SQL FUNCTIONS----------------
--------------CONCAT-----------------------
SELECT first_name,country, CONCAT (first_name,country) AS name_country FROM customers

--------------UPPER AND LOWER-----------------------
SELECT first_name,country, CONCAT (first_name, '-' ,country) AS name_country,
LOWER(first_name) AS low_name,
UPPER(first_name) AS up_name FROM customers

--------------TRIM-----------------------
--Find customers whose name contains leading or trailing spaces
SELECT first_name,LEN(first_name) FROM customers WHERE first_name!=TRIM(first_name)


--------------REPLACE-----------------------
--Remove dashes (-) from a phone number
SELECT '1234-5678-9100'AS phone, REPLACE('1234-5678-9100',  '-', '/') AS clean_phone
--Replace FILE extence from txt to csv
SELECT 'report.txt' AS old_file, REPLACE('report.txt','.txt','.csv') AS new_filename

--------------LEN---------------------------
--Calculate the length of each customers first name
SELECT first_name,LEN(first_name) AS len_name FROM customers

--------------LEFT AND RIGHT---------------------------
---Retrieve the first two characters of each first name
SELECT first_name, LEFT(first_name,2) FROM customers
 --Retrieve the last two characters of each first name
SELECT first_name, RIGHT(first_name,2) FROM customers

---------------SUBSTRING---------------------------
---Retrieve a list of customers first name after removing the first character
SELECT first_name,SUBSTRING(TRIM(first_name),2,LEN(first_name)) AS sub_name FROM customers

---------------------------------------------------------------------
----------------------Number function-------------------------------