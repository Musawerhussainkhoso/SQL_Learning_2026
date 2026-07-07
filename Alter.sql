/*
Mostly in alter we do:
1. ADD = to add new column
-- 1. ADD new column
ALTER TABLE table_name
ADD column_name datatype;

2. DROP =  delete any column
-- 2. DROP column
ALTER TABLE table_name
DROP COLUMN column_name;

3. RENAME = can change the name of the table or column
-- 3. RENAME column
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;

4. MODIFY = to change the datatype or size of the column 
-- 4. MODIFY datatype/size
ALTER TABLE table_name
MODIFY column_name new_datatype;
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

# Add new column 
ALTER TABLE customers
ADD address VARCHAR(50);

UPDATE customers
SET address = 'Street 1, Karachi'
WHERE customer_id = 1;

UPDATE customers
SET address = 'Street 2, Hyderabad'
WHERE customer_id = 2;

UPDATE customers
SET address = 'Street 4, Islamabad'
WHERE customer_id = 4;

UPDATE customers
SET address = 'Street 5, Karachi'
WHERE customer_id = 5;

UPDATE customers
SET address = 'Street 6, Sukkur'
WHERE customer_id = 6;

UPDATE customers
SET address = 'Street 7, Multan'
WHERE customer_id = 7;

UPDATE customers
SET address = 'Street 8, Quetta'
WHERE customer_id = 8;

--rename column 
ALTER TABLE customers
RENAME COLUMN address TO full_address;

-- drop column
ALTER TABLE customers
DROP COLUMN address;




