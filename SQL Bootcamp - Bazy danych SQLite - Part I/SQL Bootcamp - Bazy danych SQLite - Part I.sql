/* SQL Bootcamp - Bazy danych SQLite - Part I */




/* Instrukcja SELECT */

SELECT 20;

SELECT 20 + 40;

SELECT 20 - 40;

SELECT 20 * 40;

SELECT 20 / 5;

SELECT 21 / 5.0; 

SELECT 20 % 5;

SELECT 21 % 5;  

SELECT 'python'; 

SELECT 'python', 'java', 'c++'; 

SELECT 'Sci' || ' & ', 'Tech';

SELECT True, False;

SELECT NULL;

SELECT (45.0 / 42.0) - 1;

SELECT (45.0 / 42.0) - 1 AS daily_return;

SELECT (45.0 / 42.0) - 1 AS daily_return,
		'GPW' AS stock_market;




/* Instrukcja SELECT ... FROM ... */

SELECT * FROM Category;


SELECT 
	Id, 
	CategoryName, 
	Description 
FROM 
	Category;


SELECT 
	CategoryName, 
	Description 
FROM 
	Category;


SELECT 
	CategoryName AS Category, 
	Description 
FROM 
	Category;
	

SELECT * FROM Employee;


SELECT 
	FirstName, 
	LastName, 
	City, 
	Title 
FROM 
	Employee;




/* Instrukcja ORDER BY */

SELECT 
	* 
FROM 
	Employee
ORDER BY 
	FirstName;

	
SELECT 
	* 
FROM 
	Employee
ORDER BY 
	FirstName DESC;


SELECT 
	* 
FROM 
	Employee
ORDER BY 
	Title, 
	FirstName;

	
SELECT 
	* 
FROM 
	Employee
ORDER BY 
	Title, 
	FirstName DESC;


SELECT 
	Title,
	FirstName,
	LastName
FROM 
	Employee
ORDER BY 
	1, 
	2 DESC;


SELECT 
	* 
FROM 
	Product
ORDER BY 
	UnitPrice;
	

SELECT 
	* 
FROM 
	Product
ORDER BY 
	UnitPrice DESC;
	
	
SELECT 
	* 
FROM 
	Customer
ORDER BY 
	Fax;

	
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax;
	
	
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax DESC;
	
		
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax DESC NULLS FIRST;


SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax ASC NULLS LAST;
	
	
	

/* Instrukcja LIMIT + OFFSET */


/* Instrukcja SELECT DISTINCT */


/* Instrukcja WHERE */


/* Instrukcja SELECT CASE */


/* Podzapytania */


/* Łączenie tabel */


/* Połączenie typy CROSS JOIN */


/* Połączenie typy LEFT JOIN */


/* Połączenie typy INNER JOIN */


/* Połączenie typy SELF JOIN */


/* Łączenie tabel UNION */


/* Łączenie tabel UNION ALL */


/* Łączenie tabel EXCEPT */


/* Łączenie tabel INTERSECT */