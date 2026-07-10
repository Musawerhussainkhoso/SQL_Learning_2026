CREATE DATABASE join_practice;
USE join_practice;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);
INSERT INTO students VALUES
(1, 'Ali', 'Karachi'),
(2, 'Sara', 'Lahore'),
(3, 'Ahmed', 'Hyderabad'),
(4, 'Hina', 'Islamabad');

INSERT INTO courses VALUES
(101, 'SQL'),
(102, 'Python'),
(103, 'Excel'),
(104, 'Power BI');

INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 101),
(4, 3, 103);


SELECT students.student_name, courses.course_name
FROM students
INNER JOIN enrollments
ON students.student_id = enrollments.student_id
INNER JOIN courses
ON enrollments.course_id = courses.course_id;