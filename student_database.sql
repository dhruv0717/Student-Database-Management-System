CREATE DATABASE StudentDB;

USE StudentDB;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Math INT,
    Science INT,
    English INT
);

INSERT INTO Students VALUES
(101,'Rahul',20,'Male',85,90,82),
(102,'Priya',19,'Female',95,88,91),
(103,'Aman',20,'Male',70,78,80),
(104,'Neha',21,'Female',89,84,87),
(105,'Sneha',20,'Female',76,91,90),
(106,'Arjun',19,'Male',92,93,94),
(107,'Vikas',21,'Male',68,75,70),
(108,'Rohit',20,'Male',82,85,80),
(109,'Riya',19,'Female',91,89,92),
(110,'Karan',20,'Male',74,79,77);

SELECT * FROM Students;

UPDATE Students
SET Age = 22
WHERE Student_ID = 107;

DELETE FROM Students
WHERE Student_ID = 103;

SELECT *
FROM Students
WHERE Math > 80;

SELECT *
FROM Students
ORDER BY Math DESC;

SELECT
Student_Name,
Math + Science + English AS Total
FROM Students;

SELECT
Student_Name,
ROUND((Math + Science + English)/3,2) AS Percentage
FROM Students;

SELECT *
FROM Students
ORDER BY Math + Science + English DESC
LIMIT 1;

SELECT
AVG(Math) AS Math_Average,
AVG(Science) AS Science_Average,
AVG(English) AS English_Average
FROM Students;

SELECT COUNT(*) AS Total_Students
FROM Students;

ALTER TABLE Students
ADD City VARCHAR(30);

UPDATE Students
SET City='Mumbai';

SELECT *
FROM Students
WHERE City='Mumbai';