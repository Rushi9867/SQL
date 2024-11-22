CREATE DATABASE  IF NOT EXISTS iNeuron;
USE iNeuron;

CREATE TABLE Employee_data(Emp_id char(5), Age int , Gender char(2), Salary int, City varchar(30));
INSERT INTO employee_data (Emp_id, Age, Gender, Salary, City)
VALUES
('E1001', 28, "M", 60000, 'New York'),
('E1002', 35, "F", 75000, 'Los Angeles'),
('E1003', 22, "M", 50000, 'Chicago'),
('E1004', 40, "F", 90000, 'Houston'),
('E1005', 32, "M", 80000, 'San Francisco'),
('E1006', 25, "F", 55000, 'Miami'),
('E1007', 38, "M", 72000, 'Seattle'),
('E1008', 29, "F", 68000, 'Dallas'),
('E1009', 33, "M", 85000, 'Boston'),
('E1010', 27, "F", 60000, 'Atlanta'),
('E1011', 30, "M", 70000, 'Denver'),
('E1012', 31, "F", 75000, 'Phoenix'),
('E1013', 26, "M", 62000, 'Austin'),
('E1014', 36, "F", 92000, 'San Diego'),
('E1015', 24, "M", 58000, 'Portland'),
('E1016', 37, "F", 88000, 'Philadelphia'),
('E1017', 28, "M", 65000, 'Minneapolis'),
('E1018', 34, "F", 80000, 'Detroit'),
('E1019', 39, "M", 95000, 'Tampa'),
('E1020', 23, "F", 54000, 'Charlotte');

SELECT *FROM Employee_data;

create table Employee_info(Emp_id char(5), Name varchar(25), Department Varchar(15), 
Manager varchar(20));

INSERT INTO employee_info (Emp_id, Name, Department, Manager)
VALUES
('E2001', 'John Smith', 'IT', 'Michael Johnson'),
('E2002', 'Jane Doe', 'HR', 'Alice Williams'),
('E2003', 'Robert Johnson', 'Sales', 'Emily Davis'),
('E1004', 'Mary Brown', 'IT', 'Michael Johnson'),
('E2005', 'David Miller', 'Finance', 'George Anderson'),
('E2006', 'Emily Davis', 'Marketing', 'Richard Jones'),
('E1007', 'Michael Johnson', 'IT', 'Martin Crow'),
('E1008', 'Alice Williams', 'HR', 'Jack Welch'),
('E1009', 'George Anderson', 'Finance', 'Harry Potter'),
('E2010', 'Richard Jones', 'Marketing', 'Ron Weisley'),
('E2011', 'Daniel White', 'Sales', 'Robert Johnson'),
('E1012', 'Laura Taylor', 'IT', 'Michael Johnson'),
('E1013', 'Samuel Clark', 'Finance', 'George Anderson'),
('E2014', 'Olivia Martinez', 'HR', 'Alice Williams'),
('E2015', 'Ethan Wilson', 'Marketing', 'Richard Jones'),
('E2016', 'Sophia Turner', 'Sales', 'Robert Johnson'),
('E2017', 'Liam Moore', 'IT', 'Michael Johnson'),
('E2018', 'Ava Harris', 'Finance', 'George Anderson'),
('E2019', 'Logan King', 'Marketing', 'Richard Jones'),
('E1020', 'Harper Scott', 'Sales', 'Robert Johnson');

select * from Employee_info;

## INNER JOIN
SELECT *FROM Employee_Data ed INNER JOIN Employee_info ei
ON ed.Emp_id = ei.Emp_id;

## LEFT JOIN
SELECT ed.Emp_id,Age,Gender,Name,Department,Manager FROM Employee_Data ed 
LEFT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

SELECT ed.Emp_id,Age,Gender,Name,Department,Manager FROM Employee_Data ed 
LEFT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

## RIGHT JOIN
SELECT ei.Emp_id,Age,Gender,Name,Department,Manager FROM Employee_Data ed 
RIGHT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

SELECT ei.Emp_id,Age,Gender,Name,Department,Manager FROM Employee_Data ed 
RIGHT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

## FULL JOIN
SELECT *FROM Employee_Data ed 
LEFT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
UNION
SELECT *FROM Employee_Data ed
RIGHT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

SELECT *FROM Employee_Data ed 
LEFT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
UNION
SELECT *FROM Employee_Data ed
RIGHT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id;

SELECT *FROM Employee_Data ed 
LEFT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
UNION
SELECT *FROM Employee_Data ed
RIGHT OUTER JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
WHERE ed.Emp_id IS NULL;

SELECT *FROM Employee_Data ed 
LEFT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
UNION ALL
SELECT *FROM Employee_Data ed
RIGHT JOIN Employee_info ei ON ed.Emp_id = ei.Emp_id
WHERE ed.Emp_id IS NULL;
