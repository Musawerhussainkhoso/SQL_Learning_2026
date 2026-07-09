CREATE DATABASE IF NOT EXISTS cust_data;
USE cust_data;
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    Email VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Ali', 'ali@email.com'),
(2, 'Ahmed', 'ahmed@email.com'),
(3, 'Hassan', 'hassan@email.com'),
(4, 'John', 'john@email.com'),
(5, 'Sara', 'sara@email.com'),
(6, 'Zara', 'zara@email.com'),
(7, 'Shawn', 'shawn@email.com');

-- Query 1: Names starting with 'A'
SELECT * FROM Customers
WHERE CustomerName LIKE 'A%';

-- Query 2: Names ending with 'n'
SELECT * FROM Customers
WHERE CustomerName LIKE '%n';

-- Query 3: Exactly 4-letter names
SELECT * FROM Customers
WHERE CustomerName LIKE '____';

-- Query 4: Names containing 'ha'
SELECT * FROM Customers
WHERE CustomerName LIKE '%ha%';

-- Query 5: 5-letter names starting with 'S'
SELECT * FROM Customers
WHERE CustomerName LIKE 'S____';

