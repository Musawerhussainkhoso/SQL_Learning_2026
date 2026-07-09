/*
Aggregate Functions – Functions that perform calculations on groups of rows and return a single result.
Common aggregate functions:

COUNT() – Counts number of rows
SUM() – Adds all values
AVG() – Calculates average
MAX() – Finds highest value
MIN() – Finds lowest value
*/
CREATE DATABASE IF NOT EXISTS Agg_Func;
USE Agg_Func;
CREATE TABLE Sales (
    SalesID INT,
    ProductName VARCHAR(50),
    Amount INT,
    Quantity INT
);

INSERT INTO Sales VALUES
(1, 'Laptop', 1000, 2),
(2, 'Phone', 500, 3),
(3, 'Tablet', 300, 1),
(4, 'Laptop', 1000, 1),
(5, 'Phone', 500, 4);

-- Query 1: Count total number of sales
SELECT COUNT(*) AS TotalSales
FROM Sales;

-- Query 2: Sum of all amounts
SELECT SUM(Amount) AS TotalRevenue
FROM Sales;

-- Query 3: Average amount per sale
SELECT AVG(Amount) AS AverageAmount
FROM Sales;

-- Query 4: Maximum amount (highest sale)
SELECT MAX(Amount) AS HighestSale
FROM Sales;

-- Query 5: Minimum amount (lowest sale)
SELECT MIN(Amount) AS LowestSale
FROM Sales;
