/* 1a) display all in Product table*/
USE ABJsunglassesDB
SELECT *
FROM Product;

/* 1b) display all in Supplier table*/
USE ABJsunglassesDB
SELECT *
FROM Supplier;

/* 1c) display all in Customer table*/
USE ABJsunglassesDB
SELECT *
FROM Customer;

/* 1d) display all in Sales table*/
USE ABJsunglassesDB
SELECT *
FROM Sales;

/* 1d) display all in Territory table*/
USE ABJsunglassesDB
SELECT *
FROM Territory;

/* 2) query that uses aggregate function (sum of all sales for ABJ sunglasses*/
USE ABJsunglassesDB
SELECT SUM(TotalPrice) AS Total_Revenue
FROM Sales;

/* 3) a query that uses an INNER JOIN (how much revenue collected from each product)*/
USE ABJsunglassesDB
SELECT p.ProductName
	, COUNT(s.ProductID) AS Total_Qty_Sold
	, SUM(s.TotalPrice) AS Total_Revenue
FROM Product AS p
	INNER JOIN Sales AS s 
	ON p.ProductID = s.ProductID
GROUP BY p.ProductName;

/* 4) a query that uses an OUTER JOIN (ABJ Sunglasses is doing a company wide flash sale via text message alert for any previous customers.
However, at ABJ sunglasses we value all previous customers the same and would like to know which customers need to be alerted via email since a phone # was not provided)*/
USE ABJsunglassesDB
SELECT c.FirstName
	, c.LastName
	, c.Email
	, c.Phone#
FROM Customer AS c 
LEFT OUTER JOIN Sales AS s ON c.CustomerID = s.CustomerID
WHERE c.Phone# IS NULL
group by c.FirstName
	,c.LastName
	, c.Email
	, c.Phone#;

/* 5) a query that uses a subquery (find our premier luxury products whose price exceed the average retail price)*/
USE ABJsunglassesDB
SELECT p.ProductName
	, p.RetailPrice
FROM Product AS p
WHERE p.RetailPrice > (SELECT AVG(p.RetailPrice) 
	FROM Product AS p);