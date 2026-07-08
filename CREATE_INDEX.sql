/*
CRETAE INDEX INDEX_NAME
ON TABLE_NAME (COLUMN_NAME);
*/
CREATE DATABASE IF NOT EXISTS citizen;
USE citizen;
CREATE TABLE citizens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100),
    cnic VARCHAR(15) UNIQUE,
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50),
    province VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    occupation VARCHAR(50)
);
INSERT INTO citizens (full_name, cnic, phone, email, city, province, date_of_birth, gender, occupation) VALUES
('Ahmed Raza', '35202-1234567-1', '0301-1234567', 'ahmed.raza@example.com', 'Lahore', 'Punjab', '1990-05-14', 'Male', 'Engineer'),
('Ayesha Khan', '35201-7654321-2', '0322-7654321', 'ayesha.khan@example.com', 'Karachi', 'Sindh', '1995-08-21', 'Female', 'Doctor'),
('Bilal Ahmed', '61101-1122334-3', '0333-1122334', 'bilal.ahmed@example.com', 'Islamabad', 'Islamabad Capital', '1988-01-30', 'Male', 'Teacher'),
('Fatima Noor', '42101-2233445-4', '0345-2233445', 'fatima.noor@example.com', 'Karachi', 'Sindh', '1992-11-11', 'Female', 'Accountant'),
('Hassan Ali', '35203-3344556-5', '0300-3344556', 'hassan.ali@example.com', 'Lahore', 'Punjab', '1985-03-19', 'Male', 'Businessman'),
('Meera Sheikh', '17301-4455667-6', '0312-4455667', 'meera.sheikh@example.com', 'Peshawar', 'KPK', '1998-07-07', 'Female', 'Designer'),
('Zainab Iqbal', '61102-5566778-7', '0334-5566778', 'zainab.iqbal@example.com', 'Islamabad', 'Islamabad Capital', '1993-09-25', 'Female', 'Lawyer'),
('Usman Tariq', '35204-6677889-8', '0321-6677889', 'usman.tariq@example.com', 'Faisalabad', 'Punjab', '1991-04-02', 'Male', 'Engineer'),
('Sana Malik', '42102-7788990-9', '0302-7788990', 'sana.malik@example.com', 'Karachi', 'Sindh', '1996-12-15', 'Female', 'Nurse'),
('Imran Farooq', '17302-8899001-0', '0345-8899001', 'imran.farooq@example.com', 'Peshawar', 'KPK', '1987-06-10', 'Male', 'Banker'),
('Nida Aslam', '35205-9900112-1', '0333-9900112', 'nida.aslam@example.com', 'Multan', 'Punjab', '1994-02-28', 'Female', 'Pharmacist'),
('Kamran Shah', '61103-0011223-2', '0300-0011223', 'kamran.shah@example.com', 'Islamabad', 'Islamabad Capital', '1989-10-05', 'Male', 'Consultant'),
('Rabia Aziz', '42103-1122334-3', '0311-1122334', 'rabia.aziz@example.com', 'Karachi', 'Sindh', '1997-03-17', 'Female', 'Analyst'),
('Waqas Anjum', '35206-2233445-4', '0322-2233445', 'waqas.anjum@example.com', 'Lahore', 'Punjab', '1990-08-09', 'Male', 'Engineer'),
('Hira Yousaf', '17303-3344556-5', '0345-3344556', 'hira.yousaf@example.com', 'Peshawar', 'KPK', '1999-01-22', 'Female', 'Teacher');
SELECT * FROM citizens;

-- create index on cnic 
CREATE INDEX cnic_index
ON citizens (cnic);
SHOW INDEX FROM citizens;
SELECT * FROM citizens
WHERE cnic = '17303-3344556-5';

CREATE INDEX city
ON citizens (city);

SELECT * FROM citizens
WHERE CITY = "peshawar";