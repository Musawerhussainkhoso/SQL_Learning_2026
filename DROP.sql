/*
Basic Syntax:
1: DROP TABLE table_name;
2: DROP DATABASE database_name;
3: ALTER TABLE table_name
DROP COLUMN column_name;( (this one's actually part of ALTER, not DROP, but people often lump it in):)
*/

CREATE DATABASE meezan_bank;

USE meezan_bank;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    cnic VARCHAR(20),
    city VARCHAR(50),
    phone VARCHAR(20),
    account_type VARCHAR(30),
    balance DECIMAL(12,2)
);
INSERT INTO customers 
(full_name, cnic, city, phone, account_type, balance)
VALUES
('Ali Khan', '42101-1234567-1', 'Karachi', '03001234567', 'Savings', 85000.00),
('Sara Ahmed', '42201-7654321-2', 'Hyderabad', '03111234567', 'Current', 150000.00),
('Bilal Hussain', '42301-9876543-3', 'Lahore', '03221234567', 'Savings', 45000.00),
('Ayesha Noor', '42401-1122334-4', 'Islamabad', '03331234567', 'Current', 250000.00),
('Hamza Ali', '42501-5566778-5', 'Karachi', '03441234567', 'Savings', 120000.00),
('Hina Shah', '42601-9988776-6', 'Sukkur', '03551234567', 'Business', 500000.00),
('Zain Malik', '42701-3344556-7', 'Multan', '03009876543', 'Savings', 30000.00),
('Maham Tariq', '42801-7788990-8', 'Quetta', '03119876543', 'Current', 95000.00);

-- Table 2: for practicing DROP COLUMN
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    temp_notes VARCHAR(100)
);

INSERT INTO employees VALUES
(101, 'Ahmed', 'IT', 55000, 'to be reviewed'),
(102, 'Fatima', 'HR', 48000, 'ok'),
(103, 'Bilal', 'Finance', 60000, 'pending'),
(104, 'Ayesha', 'IT', 52000, 'ok');

-- Drop the table of employees
DROP TABLE employees;

-- drop database
DROP DATABASE IF EXISTS meezan_bank;

ALTER TABLE employees
DROP COLUMN temp_notes;