-- Parent Table (Departments)
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- Child Table (Employees)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);
INSERT INTO employees VALUES
(101, 'Ali Khan', 25, 50000, 3),
(102, 'Sara Ahmed', 28, 60000, 2),
(103, 'Ahmed Raza', 30, 55000, 1),
(104, 'Hina Noor', 26, 48000, 3),
(105, 'Bilal Hussain', 35, 70000, 2),
(106, 'Usman Ali', 29, 65000, 4);

/*
departments
-----------------------
department_id | Name
-----------------------
1             | HR
2             | Finance
3             | IT
4             | Marketing
        ▲
        │
        │  Foreign Key
        │
employees
---------------------------------------------
employee_id | Name | department_id
---------------------------------------------
101         | Ali  | 3
102         | Sara | 2
103         | Ahmed| 1
*/