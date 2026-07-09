/*
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, value3, ...);
*/
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, city, salary) VALUES
(1, 'Ravi Kumar', 'Sales', 'Delhi', 45000),
(2, 'Priya Sharma', 'IT', 'Mumbai', 65000),
(3, 'Aman Verma', 'HR', 'Pune', 40000),
(4, 'Neha Singh', 'IT', 'Bangalore', 70000),
(5, 'Karan Mehta', 'Finance', 'Delhi', 55000),
(6, 'Sonia Rao', 'Sales', 'Chennai', 42000),
(7, 'Vikram Joshi', 'HR', 'Mumbai', 39000),
(8, 'Divya Nair', 'Finance', 'Bangalore', 58000);

-- 1. Employees from Sales or IT department
SELECT * FROM employees
WHERE department IN ('Sales', 'IT');

-- 2. Employees living in Delhi, Mumbai, or Pune
SELECT * FROM employees
WHERE city IN ('Delhi', 'Mumbai', 'Pune');

-- 3. Employees NOT in HR or Finance
SELECT * FROM employees
WHERE department NOT IN ('HR', 'Finance');

-- 4. Employees with specific emp_id values
SELECT * FROM employees
WHERE emp_id IN (2, 4, 6, 8);

-- 5. Employees whose salary matches a specific set of values
SELECT * FROM employees
WHERE salary IN (45000, 55000, 65000);