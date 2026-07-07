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

/*
SYNTAX
DELETE from table_name
WHERE condition;
*/

--1. Delete the record of customer with customer_id 3
DELETE FROM customers
WHERE customer_id = 3;

-- 2. Delete the record of customer with customer_id 5
DELETE FROM customers
WHERE customer_id = 5;

-- Delete the customer whose city is Quetta.
DELETE FROM  customers
WHERE city = "Quetta";

-- Delete all customers whose account type is Savings.
DELETE FROM customers
WHERE account_type = "Savings";

-- Delete the customer whose balance is less than 50000.
DELETE FROM customers
WHERE balance < 50000;