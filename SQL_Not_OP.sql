/*
NOT Operator – Used in WHERE clause to exclude records. Works with other operators.

NOT – Returns records that do NOT match a condition.
NOT LIKE – Excludes records matching a pattern.
NOT BETWEEN – Excludes records within a range.
NOT IN – Excludes records matching a list of values.
IS NOT NULL – Excludes records with empty/missing values.
NOT EXISTS – Returns rows where a subquery finds no matching record
*/
-- CUSTOMERS TABLE
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    Country VARCHAR(50),
    Phone VARCHAR(20)
);

INSERT INTO Customers VALUES
(1, 'Alice Johnson', 'USA', '555-1001'),
(2, 'Bob Smith', 'USA', NULL),
(3, 'Charlie Brown', 'India', '555-1003'),
(4, 'Diana Prince', 'Canada', '555-1004'),
(5, 'Eve Wilson', 'Australia', NULL),
(6, 'Frank Castle', 'USA', '555-1006');

-- PRODUCTS TABLE
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT
);

INSERT INTO Products VALUES
(1, 'Apple', 'Fruits', 5),
(2, 'Samsung Phone', 'Electronics', 800),
(3, 'Shirt', 'Clothing', 25),
(4, 'Shoes', 'Clothing', 60),
(5, 'Sony Headphones', 'Electronics', 150),
(6, 'Socks', 'Clothing', 10);

-- ORDERS TABLE
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    ProductID INT
);

INSERT INTO Orders VALUES
(1, 1, 2),
(2, 1, 5),
(3, 3, 1),
(4, 4, 3),
(5, 6, 4);

-- EMPLOYEES TABLE
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1, 'John Davis', 35000),
(2, 'John Smith', 45000),
(3, 'Sarah Miller', 55000),
(4, 'Mike Johnson', 40000),
(5, 'Emma Wilson', 60000);

-- 1. Get all customers whose country is NOT 'USA'.
SELECT * FROM Customers
WHERE Country != 'USA';

-- 2. Find all products whose name does NOT start with 'S'.
SELECT * FROM Products
WHERE ProductName NOT LIKE 'S%';

-- 3. List all employees whose salary is NOT between 30000 and 50000.
SELECT * FROM Employees
WHERE Salary NOT BETWEEN 30000 AND 50000;

-- 5. Find all customers who have a phone number on file (phone is NOT NULL).
SELECT * FROM Customers
WHERE Phone IS NOT NULL;

