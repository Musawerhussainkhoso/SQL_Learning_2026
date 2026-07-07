CREATE DATABASE IF NOT EXISTS sql_learning_2026;

USE sql_learning_2026;
DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO students VALUES
(1, 'Ali', 20),
(2, 'Sara', 21);

SELECT * FROM students;