CREATE DATABASE stu;
USE stu;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT
);

INSERT INTO students VALUES
(1, 'Ali'),
(2, 'Sara'),
(3, 'Ahmed'),
(4, 'Hina');

INSERT INTO marks VALUES
(101, 1, 'SQL', 85),
(102, 2, 'Python', 90),
(103, 3, 'Excel', 78),
(104, 5, 'Power BI', 88);

SELECT students.student_name, marks.subject, marks.marks
FROM students
LEFT JOIN marks
ON students.student_id = marks.student_id

UNION

SELECT students.student_name, marks.subject, marks.marks
FROM students
RIGHT JOIN marks
ON students.student_id = marks.student_id;