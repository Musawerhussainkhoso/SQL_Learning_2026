CREATE DATABASE group_by_company;
USE group_by_company;

CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_category VARCHAR(50),
    city VARCHAR(50),
    payment_method VARCHAR(30),
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO sales_orders VALUES
(1, 'Ali Khan', 'Laptop', 'Karachi', 'Cash', 1, 85000, '2026-01-05'),
(2, 'Sara Ahmed', 'Mobile', 'Lahore', 'Card', 2, 120000, '2026-01-07'),
(3, 'Ahmed Raza', 'Laptop', 'Karachi', 'Bank Transfer', 1, 95000, '2026-01-10'),
(4, 'Hina Noor', 'Tablet', 'Islamabad', 'Cash', 1, 45000, '2026-01-12'),
(5, 'Bilal Hussain', 'Mobile', 'Karachi', 'Card', 1, 60000, '2026-01-15'),
(6, 'Ayesha Malik', 'Accessories', 'Lahore', 'Cash', 3, 15000, '2026-01-18'),
(7, 'Usman Ali', 'Laptop', 'Hyderabad', 'Bank Transfer', 1, 78000, '2026-01-20'),
(8, 'Fatima Zahra', 'Mobile', 'Islamabad', 'Card', 2, 110000, '2026-01-23'),
(9, 'Hamza Khan', 'Accessories', 'Karachi', 'Cash', 5, 25000, '2026-01-25'),
(10, 'Noor Ahmed', 'Tablet', 'Lahore', 'Card', 1, 50000, '2026-01-28');

-- Query 1: City wise total sales
SELECT city, SUM(total_amount) AS total_sales
FROM sales_orders
GROUP BY city;

-- Query 2: Product category wise total quantity sold
SELECT product_category, SUM(quantity) AS total_quantity
FROM sales_orders
GROUP BY product_category;

-- Query 3: Payment method wise total revenue
SELECT payment_method, SUM(total_amount) AS total_revenue
FROM sales_orders
GROUP BY payment_method;

-- Query 4: City wise total orders
SELECT city, COUNT(order_id) AS total_orders
FROM sales_orders
GROUP BY city;