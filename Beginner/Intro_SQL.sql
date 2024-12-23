show databases;

CREATE DATABASE  IF NOT EXISTS learn_sql;
use learn_sql;
show tables;

DROP TABLE IF EXISTS student;

CREATE Table student(
Stu_id INT,
Stu_name VARCHAR(50),
Age VARCHAR(8),
Location VARCHAR(50));

INSERT INTO student VALUES(1,'Rushi',24,'INDIA');
INSERT INTO student VALUES(2,NULL,24,'INDIA');
SELECT *FROM student;
drop table student;

---- Using NOT NULL----

CREATE TABLE Student(
Stu_id INT,
Stu_Name VARCHAR(50) NOT NULL,
Age VARCHAR(8),
Gender VARCHAR(8),
Location VARCHAR(50));

INSERT INTO Student VALUES(1,'Rushi',24,'M','INDIA');
INSERT INTO Student VALUES(2,'Ravi',24,'M','INDIA');
INSERT INTO Student VALUES(3,NULL,24,'M','INDIA'); ---- Showing Error
SELECT *FROM Student;
select *from student INTO OUTFILE '/temp/myoutput.txt';

DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS dep;
---- PRIMARY KEY -----

CREATE TABLE DEP(
Depid INT NOT NULL,
Depname VARCHAR(25),
Depadd VARCHAR(100),
PRIMARY KEY(Depid));

SELECT *FROM DEP;

DROP TABLE IF EXISTS emp;

----- FOREIGN KEY----

CREATE TABLE EMP(
Empid INT,
Empname VARCHAR(50),
Depadd VARCHAR(255),
Depid INT,
PRIMARY KEY (Empid),
FOREIGN KEY (Depid) REFERENCES Dep(Depid));

SELECT *FROM Emp;

----------             ------------
	  ---- DDL Queries ----

SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS leran_sql;
USE learn_sql;
SHOW TABLES;
DROP TABLE IF EXISTS Employees;

---- CREATE-----
CREATE TABLE Employees(
Emp_name VARCHAR(50),
Emp_id INT NOT NULL,
Manager_name VARCHAR(50),
Division INT,
PRIMARY KEY (Emp_id));

DROP TABLE IF EXISTS Emp_New;

CREATE TABLE Emp_New(
Firstname VARCHAR(10),
Lastname VARCHAR(10),
Title VARCHAR(80),
Age INT,
Salary INt);

SELECT *FROM Emp_New;

---- ALTER -----
ALTER TABLE 
Emp_New
ADD Gender VARCHAR(5);

ALTER TABLE Emp_New DROP COLUMN RANDOM;

---- DROP ----
DROP TABLE Emp_New;

create database random_new;
DROP database random_new;

----------            -----------
	  ---- DQL Queries ----

show databases;
create database IF NOT EXISTS learn_sql;
use learn_sql;
show tables;

---- SELECT-----

create table empinfo(
firstname varchar(20),
lastname varchar(20),
id int not null,
age INT,
city varchar(20),
state varchar(20),
PRIMARY KEY (id));
INSERT INTO empinfo values('John','Jones',99980,45,'Payson','Arizona');
INSERT INTO empinfo values('Mary','Jones',99982,25,'Payson','Arizona');
INSERT INTO empinfo values('Eric','Edwards',88232,32,'San Diego','California');
INSERT INTO empinfo values('Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
INSERT INTO empinfo values('Ginger','Howell',98002,42,'Cottenwood','Arizona');
INSERT INTO empinfo values('Sebastian','Smith',92001,23,'Gila Bend','Arizona');
INSERT INTO empinfo values('Gus','Gray',22332,35,'Bagdad','Arizona');
select firstname,lastname from empinfo;
select firstname as first_name ,lastname as last_name from empinfo;

select *from empinfo;
select count(id) from empinfo;
select count(id) as Record_Count from empinfo;
select firstname,lastname,city from empinfo;
select *from empinfo where age > 30;
select *from empinfo where age > 30 and age < 40;
--- name startswith e ----
select *from empinfo where firstname like 'E%';
----- name enswith s -----
select *from empinfo where firstname like '%s';

select *from empinfo where age = 25 or age = 32;
select *from empinfo where age in(23,32,25,45);

select *from empinfo where city like '%o%';

---------            -----------
	 ---- DML QUERIES ----
show databases;
use learn_sql;
show tables;
select *from empinfo;
---- DML  Queries -----
----- INSERT ------
INSERT INTO empinfo values('Tony','Stark',99989,55,'New York','America');

create table emp_info(
emp_name varchar(50),
emp_role varchar(20),
age int,
salary float);

INSERT INTO emp_info values('Jonie Weber','Secretory',28,19500.00);
INSERT INTO emp_info values('Potsy Weber','Programmer',32,45300.00);
INSERT INTO emp_info values('Dirk Smith','Programmer II',45,75020.00);
INSERT INTO emp_info values('Musab Khan','Developer',22,35500.00);
INSERT INTO emp_info values('Vandana Kadam','Software Developer',25,54900.00);
INSERT INTO emp_info values('Krish Naik','Data Scientist',40,250000.00);
INSERT INTO emp_info values('Sudhanshu Kumar','AI Engineer',40,275000.00);
INSERT INTO emp_info values('Bhaven Chandra','ML Engineer',84,356000.00);
INSERT INTO emp_info values('Gaurav Kumar','Data Scientist',65,75020.00);

select *from emp_info;
select *from emp_info where salary > 30000;
select emp_name from emp_info where age < 30;
select emp_name,salary from emp_info where emp_role = 'Programmer';
select *from emp_info where emp_name like'%ebe%';
select *from emp_info where emp_name like'Potsy%';
select *from emp_info where age >= 80;
select *from emp_info where emp_name like'%ith';
select *from emp_info where salary > 100000;
select *from emp_info where emp_role = 'Data Scientist';
select emp_name,emp_role from emp_info where salary > 200000;
select *from emp_info where age In(22,24,40,65);
select salary from emp_info where emp_role = 'AI Engineer';

---- UPDATE -----
SET SQL_SAFE_UPDATES = 0;
UPDATE emp_info SET emp_role = 'Sr.Programmer' where emp_name = 'Potsy Weber';
UPDATE emp_info SET emp_name = 'Weber Williams' where emp_name = 'Jonie Weber';
select emp_name from emp_info;
select *from emp_info;
UPDATE emp_info SET age = age+1 where emp_name = 'Dirk Smith';
select *from emp_info where emp_name = 'Dirk Smith';
UPDATE emp_info SET emp_role = 'Admin Assistant' where emp_role = 'Secretory';
select *from emp_info where emp_role = 'Admin Assistant';
UPDATE emp_info SET salary = salary + 3500 where salary < 30000;
select *from emp_info where salary < 30000;
select *from emp_info;
UPDATE emp_info SET salary = salary + 4500 where salary > 33500;
select *from emp_info where salary > 33500;
UPDATE emp_info SET emp_role = 'Programmer III' where emp_role = 'Programmer II';
select *from emp_info where emp_role = 'Programmer III';
UPDATE emp_info SET emp_role = 'Programmer II' where emp_role = 'Sr.Programmer';
select *from emp_info where emp_role = 'Programmer II';
select *from emp_info;
UPDATE emp_info SET salary= salary+5000 where age = 65;
UPDATE emp_info SET emp_role = 'AI Engineer' where age > 80;
UPDATE emp_info SET emp_role = 'CIO' where emp_name = 'Krish Naik';
UPDATE emp_info SET emp_role = 'CEO' where emp_name = 'Sudhanshu Kumar';
UPDATE emp_info SET emp_role = 'Sr. Developer' where emp_role = 'Software Developer';
select *from emp_info; 

---- DELETE -----
DELETE from emp_info where emp_role = 'Developer';
DELETE from emp_info;
select *from emp_info; 

---------     ----------     
    ---- JOINS ----
show databases;
use learn_sql;
show tables;

create table customers(
cust_id int not null,
cust_name varchar(100),
cont_name varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(100),
country varchar(100),
PRIMARY KEY (cust_id));

create table orders(
order_id int not null,
cust_id int,
empl_id int,
order_date datetime,
Shipperid int,
PRIMARY KEY(order_id));

Insert into customers values(1,'Tina Dabi','Tina Dabi','Delhi','Delhi','000001','India');
Insert into customers values(2,'Riya sharma','Sharma House','Delhi','Delhi','000001','India');
Insert into customers values(3,'Sudhanshu','Sudhanshu','Bengluru','Bengluru','000001','India');
Insert into customers values(4,'Krish Naik','Krish Naik','Bengluru','Bengluru','000001','India');
Insert into customers values(5,'Ranveer Alahbadia','Ranveer Alahbadia','Mumbai','Mumbai','000001','India');
Insert into customers values(6,'Rushikeh','Rushikeh','Mumabi','Mumabi','000001','India');
Insert into customers values(7,'Rahul','Rahul','Pune','Pune','000001','India');
Insert into customers values(8,'Priya Bhatiya','Priya Bhatiya','Delhi','Delhi','000001','India');
Insert into customers values(9,'Saurabh Shukla','Saurabh Shukla','Mumbai','Mumabi','000001','India');
Insert into customers values(10,'Sandeep Maheshwary','Sandeep Maheshwary','Delhi','Delhi','000001','India');
select *from customers;

Insert Into orders values(901,1,1,sysdate(),92801);
Insert Into orders values(902,1,1,sysdate()-10,92801);
Insert Into orders values(903,2,4,sysdate()-20,92801);
Insert Into orders values(904,5,5,sysdate()-30,92801);
Insert Into orders values(905,6,6,sysdate()-40,92801);
select *from orders;

------ LEFT JOINS ------
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c LEFT JOIN orders o
ON c.cust_id = o.cust_id;

------ RIGHT JOINS ------
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c RIGHT JOIN orders o
ON c.cust_id = o.cust_id;

----- INNER JOIN ------
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c INNER JOIN orders o
ON c.cust_id = o.cust_id;

SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c ,orders o where c.cust_id = o.cust_id;

----- LEFT OUTER JOIN ----
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c LEFT OUTER JOIN orders o
ON c.cust_id = o.cust_id;

------ RIGHT OUTER JOIN -----
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c RIGHT OUTER JOIN orders o
ON c.cust_id = o.cust_id;

----- FULL OUTER JOIN -----
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c LEFT JOIN orders o
ON c.cust_id = o.cust_id;
UNION
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c RIGHT JOIN orders o
ON c.cust_id = o.cust_id;

----- CROSS JOIN ----
SELECT c.cust_id ,c.cust_name,c.country,o.order_id,o.order_date
from customers c CROSS JOIN orders o
ON c.cust_id = o.cust_id;

