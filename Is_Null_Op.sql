/*
IS NOT NULL Syntax
SELECT * FROM TableName
WHERE ColumnName IS NOT NULL;
*/
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(20)
);

INSERT INTO Students VALUES
(1, 'Ali', 'ali@email.com', '555-1001'),
(2, 'Sara', NULL, '555-1002'),
(3, 'Hassan', 'hassan@email.com', NULL),
(4, 'Zara', NULL, NULL),
(5, 'Omar', 'omar@email.com', '555-1005');

-- Query 1: Get students who DON'T have an email
SELECT * FROM Students
WHERE Email IS NULL;

-- Query 2: Get students who DON'T have a phone number
SELECT * FROM Students
WHERE Phone IS NULL;

-- Query 3: Get students who are MISSING both email AND phone
SELECT * FROM Students
WHERE Email IS NULL AND Phone IS NULL;