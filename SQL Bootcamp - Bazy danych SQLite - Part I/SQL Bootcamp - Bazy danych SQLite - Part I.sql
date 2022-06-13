/* SQL Bootcamp - Bazy danych SQLite - Part I */




/* Instrukcja SELECT */

/* --- */
SELECT 20;

/* --- */
SELECT 20 + 40;

/* --- */
SELECT 20 - 40;

/* --- */
SELECT 20 * 40;

/* --- */
SELECT 20 / 5;

/* --- */
SELECT 21 / 5.0; 

/* --- */
SELECT 20 % 5;

/* --- */
SELECT 21 % 5;  

/* --- */
SELECT 'python'; 

/* --- */
SELECT 'python', 'java', 'c++'; 

/* --- */
SELECT 'Sci' || ' & ', 'Tech';

/* --- */
SELECT True, False;

/* --- */
SELECT NULL;

/* --- */
SELECT (45.0 / 42.0) - 1;

/* --- */
SELECT (45.0 / 42.0) - 1 AS daily_return;

/* --- */
SELECT (45.0 / 42.0) - 1 AS daily_return,
		'GPW' AS stock_market;




/* Instrukcja SELECT ... FROM ... */

/* --- */
SELECT * 
FROM 
	Category;

	
/* --- */
SELECT 
	Id, 
	CategoryName, 
	Description 
FROM 
	Category;

	
/* --- */
SELECT 
	CategoryName, 
	Description 
FROM 
	Category;


/* --- */
SELECT 
	CategoryName AS Category, 
	Description 
FROM 
	Category;
	

/* --- */
SELECT * 
FROM 
	Employee;


/* --- */
SELECT 
	FirstName, 
	LastName, 
	City, 
	Title 
FROM 
	Employee;




/* Instrukcja ORDER BY */

/* --- */
SELECT * 
FROM 
	Employee
ORDER BY 
	FirstName;

	
/* --- */	
SELECT * 
FROM 
	Employee
ORDER BY 
	FirstName DESC;


/* --- */
SELECT * 
FROM 
	Employee
ORDER BY 
	Title, 
	FirstName;


/* --- */	
SELECT * 
FROM 
	Employee
ORDER BY 
	Title, 
	FirstName DESC;


/* --- */
SELECT 
	Title,
	FirstName,
	LastName
FROM 
	Employee
ORDER BY 
	1, 
	2 DESC;


/* --- */
SELECT * 
FROM 
	Product
ORDER BY 
	UnitPrice;
	
	
/* --- */
SELECT * 
FROM 
	Product
ORDER BY 
	UnitPrice DESC;
	

/* --- */
SELECT * 
FROM 
	Customer
ORDER BY 
	Fax;


/* --- */
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax;
	

/* --- */	
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax DESC;
	

/* --- */	
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax DESC NULLS FIRST;


/* --- */
SELECT 
	CompanyName,
	ContactName,
	Fax
FROM 
	Customer
ORDER BY 
	Fax ASC NULLS LAST;
	
	
	

/* Instrukcja LIMIT + OFFSET */

/* --- */
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice
LIMIT 10;
	

/* --- */	
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice DESC
LIMIT 10;
	

/* --- */
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice
LIMIT 1;


/* --- */
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice
LIMIT 1;
	
	
/* --- */
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice
LIMIT 5 OFFSET 3;
	

/* --- */
SELECT 
	ProductName,
	UnitPrice
FROM 
	Product
ORDER BY 
	UnitPrice DESC
LIMIT 1 OFFSET 4;



	
/* Instrukcja SELECT DISTINCT */

/* --- */
SELECT DISTINCT
	Country
FROM 
	Customer;


/* --- */
SELECT DISTINCT
	Country
FROM 
	Customer
ORDER BY 
	Country;

	
/* --- */
SELECT DISTINCT
	Country,
	City
FROM 
	Customer;

	
/* --- */
SELECT DISTINCT
	Country,
	City
FROM 
	Customer
ORDER BY 
	1, 2;



	
/* Instrukcja WHERE */

/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country == 'Poland';


/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country == 'Poland';
	

/* --- */	
SELECT *
FROM 
	Customer
WHERE
	Country == 'USA';


/* --- */
SELECT *
FROM 
	Customer
WHERE
	Region == 'Scandinavia';


/* --- */
SELECT 
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitPrice > 40;


/* --- */
SELECT 
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitPrice > 40
ORDER BY
	UnitPrice;

	
/* --- */
SELECT 
	ProductName, 
	UnitPrice,
	UnitsInStock
FROM 
	Product
WHERE
	UnitsInStock = 0;


/* --- */
SELECT 
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitsInStock = 0;
	

/* --- */	
SELECT 
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitsInStock != 0;


/* --- */
SELECT 
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitsInStock <> 0;
	
	
/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country == 'UK' AND City =='London';
	

/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country == 'UK' OR Country =='Italy';
	
	
/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country == 'UK' OR Country =='Italy' OR Country == 'Poland';
	

/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country IN ('UK', 'Italy', 'Poland');


/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country NOT IN ('UK', 'Italy', 'Poland');
	
	
/* --- */
SELECT *
FROM 
	Customer
WHERE
	Country NOT IN ('UK', 'Italy', 'Poland');
	
	
/* --- */
SELECT
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitPrice >= 15 AND UnitPrice <=20;
	

/* --- */
SELECT
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitPrice BETWEEN 15 AND 20;
	

/* --- */
SELECT
	ProductName, 
	UnitPrice
FROM 
	Product
WHERE
	UnitPrice NOT BETWEEN 15 AND 20;
	

/* --- */
SELECT
	CompanyName, 
	Fax
FROM 
	Customer
WHERE
	Fax IS NULL;	
	

/* --- */
SELECT
	CompanyName, 
	Fax
FROM 
	Customer
WHERE
	Fax IS NOT NULL;	
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName == 'Bon app';	


/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName == 'bon app';	
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  'B%';	
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  'b%';	
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  'Bl%';
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  '%en';	
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName NOT LIKE  '%en';	
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  '%en' OR CompanyName LIKE '%es';	
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName LIKE  '%co%';
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	Country LIKE  '___';
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	Country LIKE  '__';
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	ContactName LIKE  'J__n%';


/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	ContactName GLOB  'An*';


/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	ContactName GLOB 'an*';	


/* --- */	
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	ContactName GLOB 'An? *';
	

/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName GLOB '[A-D]*';
	
	
/* --- */
SELECT
	CompanyName, 
	ContactName,
	Country
FROM 
	Customer
WHERE
	CompanyName GLOB '[^A-D]*';
	
	
	
	
/* Wbudowane funkcje */
	
/* --- */
SELECT 
	COUNT(*)
FROM 
	Product;


/* --- */
SELECT 
	COUNT(1)
FROM 
	Product;
	
	
/* --- */
SELECT 
	COUNT(1) AS TotalRows
FROM 
	Product;


/* --- */
SELECT 
	COUNT(DISTINCT SupplierId) AS NumOfSuppliers
FROM 
	Product;
	
	
/* --- */
SELECT 
	COUNT(Fax)
FROM 
	Customer;
	
	
/* --- */
SELECT 
	SUM(UnitPrice) AS TotalSum
FROM 
	Product;
	
	
/* --- */
SELECT 
	AVG(UnitPrice) AS AvgPrice
FROM 
	Product;
	
	
/* --- */
SELECT 
	MIN(UnitPrice) AS MinPrice
FROM 
	Product;
	
	
/* --- */
SELECT 
	MAX(UnitPrice) AS MaxPrice
FROM 
	Product;


/* --- */	
SELECT 
	UPPER(CategoryName) AS CategoryName, 
	Description
FROM 
	Category;


/* --- */
SELECT 
	UPPER(CategoryName) AS CategoryName, 
	Description
FROM 
	Category;

	
/* --- */
SELECT 
	CategoryName,
	LENGTH(CategoryName) AS LenCategoryName, 
	Description
FROM 
	Category;
	

/* --- */
SELECT TYPEOF(3);

/* --- */
SELECT TYPEOF(3.5);

/* --- */
SELECT TYPEOF('PYTHON');

/* --- */
SELECT TYPEOF(null);

/* --- */
SELECT 
	CategoryName,
	TYPEOF(CategoryName) AS TypeCategoryName, 
	Description
FROM 
	Category;
	


	
/* Grupowanie danych - GROUP BY */	

/* --- */
CREATE TABLE website.sales_012021 
(
	id				INTEGER PRIMARY KEY,
	employee_id 	INTEGER NOT NULL,
	amount 			REAL NOT NULL
);	


INSERT INTO website.sales_012021 (employee_id, amount)
VALUES
(325, 109.0),
(335, 9.89),
(336, 40.0),
(325, 210.0),
(336, 39.50),
(431, 15.99),
(325, 10.99),
(431, 32.00);


/* --- */
SELECT *
FROM 
	website.sales_012021;

	
/* --- */
SELECT 
	employee_id
FROM 
	website.sales_012021
GROUP BY 
	employee_id;
	
	
/* --- */
SELECT 
	employee_id, 
	SUM(amount) AS total_sales
FROM 
	website.sales_012021
GROUP BY 
	employee_id;


/* --- */
SELECT 
	employee_id, 
	SUM(amount) AS total_sales,
	COUNT(employee_id) AS transactions,
	AVG(amount) AS avg_amount
FROM 
	website.sales_012021
GROUP BY 
	employee_id;


/* --- */
SELECT 
	employee_id, 
	SUM(amount) AS total_sales,
	COUNT(employee_id) AS transactions,
	AVG(amount) AS avg_amount,
	MIN(amount) AS min_amount,
	Max(amount) AS max_amount
FROM 
	website.sales_012021
GROUP BY 
	employee_id;


/* --- */
SELECT 
	employee_id, 
	SUM(amount) AS total_sales,
	COUNT(employee_id) AS transactions,
	AVG(amount) AS avg_amount,
	MIN(amount) AS min_amount,
	Max(amount) AS max_amount
FROM 
	website.sales_012021
GROUP BY 
	employee_id
ORDER BY
	total_sales;

	


/* Grupowanie danych - HAVING */	

/* --- */
SELECT 
	employee_id, 
	SUM(amount) AS total_sales
FROM 
	website.sales_012021
WHERE
	employee_id != 431
GROUP BY 
	employee_id
HAVING 
	total_sales > 50.0
ORDER BY
	total_sales DESC;

	
/* --- */
SELECT
	OrderId, 
	SUM(UnitPrice * Quantity * (1-Discount)) AS TotalSale
FROM 
	OrderDetail
GROUP BY 
	OrderId
ORDER BY
	TotalSale DESC;
	

/* --- */
SELECT
	ShipCountry, 
	COUNT(ShipCountry) AS NumOfRows
FROM 
	"Order"
GROUP BY 
	ShipCountry
ORDER BY
	NumOfRows DESC;


/* --- */
SELECT
	ShipCountry, 
	COUNT(ShipCountry) AS NumOfRows,
	AVG(Freight) AS AvgFreight
FROM 
	"Order"
GROUP BY 
	ShipCountry
ORDER BY
	NumOfRows DESC;
	
	
/* --- */
SELECT
	ShipCountry, 
	COUNT(ShipCountry) AS NumOfRows,
	AVG(Freight) AS AvgFreight,
	MIN(Freight) AS MinFreight,
	MAX(Freight) AS MaxFreight
FROM 
	"Order"
GROUP BY 
	ShipCountry
HAVING
	MaxFreight > 300
ORDER BY
	NumOfRows DESC;
	
	
	
/* Instrukcja SELECT CASE */

/* --- */
SELECT
	ProductName,
	UnitPrice,
	CASE
		WHEN UnitPrice < 28.0 THEN 'low'
		ELSE 'high'
	END AS PriceLevel
FROM 
	Product;


/* --- */
SELECT
	CompanyName,
	ContactName,
	ContactTitle,
	CASE
		WHEN ContactTitle == 'Owner' THEN 'Owner'
		ELSE 'Other'
	END AS IsOwner
FROM 
	Customer;
	

/* --- */
SELECT
	ProductName,
	UnitPrice,
	CASE
		WHEN UnitPrice < 10.0 THEN 'low'
		WHEN UnitPrice >= 10.0 AND UnitPrice <= 30.0 THEN 'medium'
		ELSE 'high'
	END AS PriceLevel
FROM 
	Product;
	

/* --- */
SELECT
	ProductName,
	UnitPrice,
	CASE
		WHEN UnitPrice < 10.0 THEN 'low'
		WHEN UnitPrice BETWEEN 10.0 AND 30.0 THEN 'medium'
		ELSE 'high'
	END AS PriceLevel
FROM 
	Product;


/* --- */
SELECT
	ShipRegion,
	CASE
		WHEN ShipRegion LIKE '%Europe' THEN 'Europe'
		WHEN ShipRegion LIKE '%America' THEN 'America'
		WHEN ShipRegion LIKE 'Scandinavia' THEN 'Europe'
		WHEN ShipRegion LIKE 'British Isles' THEN 'Europe'
	END AS Continent
FROM 
	"Order";
	
	
	
	
/* Podzapytania */

/* --- */
SELECT *
FROM OrderDetail
WHERE ProductId IN
	(SELECT Id
	FROM Product
	WHERE UnitsInStock > 0);


/* --- */
SELECT *
FROM "Order"
WHERE CustomerId IN
	(SELECT Id
	FROM Customer
	WHERE Country LIKE 'U%');

	
	
	
/* Połączenie typy CROSS JOIN */

/* --- */
SELECT * 
FROM category
CROSS JOIN calendar;


/* --- */
SELECT 
	category_name,
	quarter
FROM category
CROSS JOIN calendar;


/* --- */
SELECT 
	category_name,
	quarter
FROM category
CROSS JOIN calendar
ORDER BY quarter;


/* --- */
SELECT 
	category_name,
	quarter
FROM category
JOIN calendar
ORDER BY quarter;


/* --- */
SELECT 
	category_name,
	quarter
FROM 
	category,
	calendar
ORDER BY quarter;


/* --- */
SELECT 
	category_name,
	quarter
FROM category
JOIN calendar
WHERE quarter == 'Q2'
ORDER BY quarter;



/* --- */
CREATE TABLE report AS
SELECT 
	category_name,
	quarter
FROM category
JOIN calendar
WHERE quarter == 'Q2'
ORDER BY quarter;

SELECT * FROM report;




/* Połączenie typy LEFT JOIN */

/* --- */
SELECT 
	user.id,
	first_name,
	last_name,
	email,
	group_name
FROM user
LEFT JOIN user_group ON user.user_group_id = user_group.id;


/* --- */
SELECT 
	t1.id,
	t1.first_name,
	t1.last_name,
	t1.email,
	t2.group_name AS sector
FROM user AS t1
LEFT JOIN user_group AS t2 ON t1.user_group_id = t2.id;


/* --- */
SELECT 
	t1.id,
	t1.first_name,
	t1.last_name,
	t1.email,
	t2.group_name AS sector
FROM user AS t1
LEFT JOIN user_group AS t2 ON t1.user_group_id = t2.id
ORDER BY 
	t1.first_name,
	t1.last_name;

	
	
	
/* Połączenie typy INNER JOIN */


/* Połączenie typy SELF JOIN */


/* Łączenie tabel UNION */


/* Łączenie tabel UNION ALL */


/* Łączenie tabel EXCEPT */


/* Łączenie tabel INTERSECT */