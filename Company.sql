
CREATE DATABASE IF NOT EXISTS Company;
USE Company;

DROP TABLE IF EXISTS Employee; 
DROP TABLE IF EXISTS Branch; 
DROP TABLE IF EXISTS `Client`; 
DROP TABLE IF EXISTS Works_with; 
DROP TABLE IF EXISTS Branch_supplier; 

CREATE TABLE IF NOT EXISTS Employee( 
    empl_id  INT PRIMARY KEY, 
    first_name VARCHAR(40), 
    last_name VARCHAR(40), 
    birth_day DATE, 
    sex VARCHAR(1), 
    salary INT, 
    super_id INT, 
    branch_id INT  
); 
 
CREATE TABLE IF NOT EXISTS Branch ( 
    branch_id INT PRIMARY KEY, 
    branch_name VARCHAR(40), 
    mgr_id INT, 
    mgr_start_date DATE, 
    FOREIGN KEY(mgr_id) REFERENCES Employee(empl_id) ON DELETE SET NULL 
);

ALTER TABLE Employee ADD FOREIGN KEY(branch_id) 
REFERENCES Branch(branch_id) ON DELETE SET NULL; 
 
ALTER TABLE Employee ADD FOREIGN KEY(super_id) 
REFERENCES Employee(empl_id) ON DELETE SET NULL; 
 
CREATE TABLE IF NOT EXISTS `Client`( 
    client_id INT PRIMARY KEY, 
    client_name VARCHAR (40), 
    branch_id INT, 
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL 
);

CREATE TABLE IF NOT EXISTS Works_with( 
    empl_id INT, 
    client_id INT, 
    total_sales INT, 
    PRIMARY KEY(empl_id,client_id), 
    FOREIGN KEY(empl_id) REFERENCES Employee(empl_id) ON DELETE CASCADE, 
    FOREIGN KEY(client_id) REFERENCES Client(client_id) ON DELETE CASCADE 
); 
 
CREATE TABLE IF NOT EXISTS Branch_supplier( 
    branch_id INT, 
    supplier_name VARCHAR(40), 
    supply_type VARCHAR(40), 
    PRIMARY KEY(branch_id, supplier_name), 
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE CASCADE 
);

-- Corporate 
INSERT INTO Employee VALUES(100,'David','Wallace','1967-11-17', 'M', 250000, NULL ,NULL); 
INSERT INTO Branch VALUES(1,'Corporate', 100, '2006-02-09'); 
UPDATE Employee SET branch_id = 1 WHERE empl_id = 100; 
 
INSERT INTO Employee VALUES(101,'Jan','Levinson','1961-05-11','F',110000,100,1); 
 --- Scranton 
INSERT INTO Employee VALUES(102,'Micheal', 'Scott', '1964-03-15','M',75000,100,NULL); 
INSERT INTO Branch VALUES(2,'Scranton', 102, '1992-04-06'); 
UPDATE Employee SET branch_id = 2 WHERE empl_id = 102; 
UPDATE Branch SET branch_name = 'Scranton' WHERE branch_id = 2; 
 
INSERT INTO Employee VALUES(103,'Angela','Martin','1971-06-25','F',63000,102,2); 
INSERT INTO Employee VALUES(104,'Kelly','Kapoor','1980-02-05','F',55000,102,2); 
INSERT INTO Employee VALUES(105,'Stanley','Hudson','1958-02-19','M',69000,102,2); 
 --- Stamford 
INSERT INTO Employee VALUES(106,'Josh','Porter','1969-09-05','M',78000,100,NULL); 
INSERT INTO Branch VALUES(3,'Stamford',106,'1998-02-13'); 
UPDATE Employee SET branch_id = 3 WHERE empl_id = 106; 
UPDATE Employee SET super_id = 100 WHERE empl_id = 106; 
UPDATE Branch SET branch_name = 'Stamford' WHERE branch_id = 3; 
 
INSERT INTO Employee VALUES(107,'Andy','Bernard','1973-07-22','M',65000,106,3); 
INSERT INTO Employee VALUES(108,'Jim','Halpert','1978-10-01','M',71000,106,3); 

--- BRANCH SUPPLIER 
INSERT INTO Branch_supplier VALUES(2,'Hammer Mill','Paper'); 
INSERT INTO Branch_supplier VALUES(2,'Uni-ball','Writing Utensils'); 
INSERT INTO Branch_supplier VALUES(3,'Patriot Paper','Paper'); 
INSERT INTO Branch_supplier VALUES(2,'J.T. Forms & Labels','Custom Forms'); 
INSERT INTO Branch_supplier VALUES(3,'Uni-ball','Writing Utensils'); 
INSERT INTO Branch_supplier VALUES(3,'Hammer Mill','Paper'); 
INSERT INTO Branch_supplier VALUES(3,'Stamford Lables','Custom Forms'); 
 --- Client 
INSERT INTO Client VALUES(400,'Dunmore Highschool',2); 
INSERT INTO Client VALUES(401,'Lackawana Country',2); 
INSERT INTO Client VALUES(402,'FedEx',3); 
INSERT INTO Client VALUES(403,'John Daly Law,LLC',3); 
INSERT INTO Client VALUES(404,'Scranton Whitepages',2); 
INSERT INTO Client VALUES(405,'Times Newspaper',3); 
INSERT INTO Client VALUES(406,'FedEx',2); 
 --- Works With 
INSERT INTO Works_with VALUES(105,400,55000); 
INSERT INTO Works_with VALUES(102,401,267000); 
INSERT INTO Works_with VALUES(108,402,22500); 
INSERT INTO Works_with VALUES(107,403,5000); 
INSERT INTO Works_with VALUES(108,403,12000); 
INSERT INTO Works_with VALUES(105,404,33000); 
INSERT INTO Works_with VALUES(107,405,26000); 
INSERT INTO Works_with VALUES(102,406,15000); 
INSERT INTO Works_with VALUES(105,406,130000);

select * from Employee;  
select * from Branch; 
select * from `Client`; 
select * from Works_with; 
select * from Branch_supplier; 

--- find all employees ordered by salary 
select * from Employee ORDER BY salary DESC; --- ASC--- 

--- find all employees ordered by sex then firstname 
select * from Employee ORDER BY sex; 
select * from Employee ORDER BY first_name ASC;
--- find the first 5 employee  
select * from Employee LIMIT 5;

--- Find the firstname and lastanme of all employee  
select first_name , last_name FROM Employee; 

--- Set the firstname and surname names of all Employee 
SELECT first_name AS firstname, last_name AS surname FROM Employee; 

--- Find out all the different genders 
SELECT DISTINCT sex FROM Employee; 

--- Find all male employees  
SELECT * FROM Employee WHERE sex = 'M'; 

--- Find all employees at branch 2 
SELECT * FROM Employee WHERE branch_id = 2;  

--- Find all `employee's` ids and names who were born after 1969 
SELECT empl_id , first_name,last_name FROM Employee WHERE birth_day >= 1970-01-01; 

--- Find all female employees at branch 2 
SELECT * FROM Employee WHERE branch_id = 2 AND sex = 'F'; 

--- Find all Employees who are female & born after 1969 or who make over 80000 
SELECT * FROM  Employee WHERE(birth_day >= '1970-01-01' AND sex = 'F') OR salary > 80000;

--- Find all employee born between 1970 and 1975 
SELECT * FROM Employee WHERE birth_day BETWEEN '1970-01-01' AND '1975-01-01'; 

--- Find all employees named Jim, Michael, Johnny or David 
SELECT * FROM Employee WHERE first_name IN ('Jim','Micheal','Johnny','David'); 

--- Find the no.of Employees  
select COUNT(super_id) FROM Employee; 

--- Find the no.of females born after 1970 
SELECT COUNT(empl_id) FROM Employee WHERE sex = 'F' AND birth_day > '1971-01-01'; 

--- Find the Average of all employees salary 
SELECT AVG(salary) FROM Employee WHERE sex = 'M'; 

--- Find the SUM of all employees salary 
SELECT SUM(salary) FROM Employee; 

--- find out how many males and females there are 
SELECT COUNT(sex) , sex FROM Employee GROUP BY sex;
 
--- Find out totalsales of each salesman 
SELECT SUM(total_sales), empl_id FROM Works_with GROUP BY empl_id; 

--- Find out totalsales of each salesman 
SELECT SUM(total_sales), client_id FROM Works_with GROUP BY client_id; 

--- % = any # characters, _= one character--- 
--- Find  any `client's` whom are an LLC 
SELECT * FROM `Client` WHERE client_name LIKE '%LLC'; 

--- Find any Branch Supplier who are in the labels business 
SELECT * FROM Branch_supplier WHERE supplier_name LIKE '% Labels%'; 

--- Find any employee born in October or February 
SELECT * FROM Employee WHERE birth_day LIKE '____-10%'; 

--- Find any `client's` who are in `school's`  
SELECT * FROM Client WHERE client_name LIKE '%school%';
 
---- Union ---- 
--- Find a list of Employee , Client and Branch Names set column name is CompanyNames 
SELECT first_name AS Company_Names FROM Employee UNION SELECT branch_name FROM Branch  
UNION SELECT Client_name FROM `Client`; 

--- Find a list of all clients and branch supplier names 
SELECT client_name , `Client`.branch_id FROM `Client` UNION  
SELECT supplier_name , Branch_supplier.branch_id FROM Branch_supplier; 

--- Find a list of all money spent or earned hy the company 
SELECT salary FROM Employee UNION SELECT total_sales FROM Works_with; 

--- UNION ALL
SELECT empl_id,first_name AS Company_Names FROM Employee 
UNION ALL SELECT mgr_id,branch_name FROM Branch  
UNION ALL SELECT client_id,Client_name FROM `Client`; 

--- INTERSECT
SELECT DISTINCT empl_id,first_name FROM Employee 
WHERE empl_id IN (SELECT mgr_id FROM Branch); 

SELECT DISTINCT empl_id,first_name FROM Employee 
WHERE empl_id IN (SELECT empl_id FROM Works_with);

SELECT DISTINCT branch_id,branch_name FROM Branch 
WHERE branch_id IN (SELECT branch_id FROM Branch_supplier); 

--- EXCEPT
SELECT empl_id FROM Employee
EXCEPT SELECT empl_id FROM Works_with;

SELECT empl_id,first_name FROM Employee
EXCEPT SELECT mgr_id,branch_name FROM Branch;

INSERT INTO Branch VALUES(4,'Buffalo',NULL,NULL); 

--- INNER JOIN ---
SELECT empl_id,first_name,last_name FROM Employee e
INNER JOIN Branch b ON e.branch_id = b.branch_id;

--- JOIN --- 
--- find all branches and the names of their mangaers  
SELECT e.empl_id , e.first_name , b.branch_name FROM Employee e 
JOIN Branch b ON e.empl_id = b.mgr_id; 

--- LEFT JOIN  
SELECT e.empl_id , e.first_name , b.branch_name FROM Employee e
LEFT JOIN Branch b ON e.empl_id = b.mgr_id;

SELECT empl_id,first_name,last_name FROM Employee e
LEFT JOIN Branch b ON e.branch_id = b.branch_id;

--- RIGHT JOIN  
SELECT e.empl_id , e.first_name , b.branch_name FROM Employee e  
RIGHT JOIN Branch b ON e.empl_id = b.mgr_id;

SELECT empl_id,first_name,last_name FROM Employee e
RIGHT JOIN Branch b ON e.branch_id = b.branch_id;

SELECT *FROM Branch;
--- CROSS JOIN as FULL JOIN ---
SELECT empl_id,first_name,last_name FROM Employee e
CROSS JOIN Branch b ON e.branch_id = b.branch_id;

SELECT *FROM Employee;

--- SELF JOIN ---
SELECT e2.first_name AS 'EMPL_NAME',e1.first_name AS 'MANAGER_NAME'
FROM Employee e1 INNER JOIN Employee e2 ON e1.empl_id = e2.super_id;

--- Nested Queries 
--- find names of all `employee's` who have sold over 30,000 to a single client 
SELECT Employee.first_name, Employee.last_name FROM Employee WHERE Employee.empl_id IN( 
    SELECT Works_with.empl_id FROM works_with WHERE Works_with.total_sales > 30000); 

--- Find all `client's` who are handled by the branch that Micheal scott manages  
--- Assumes you know `Michael's` ID 
SELECT `Client`.client_name FROM `Client` WHERE `Client`.branch_id = ( 
    SELECT Branch.branch_id FROM Branch WHERE Branch.mgr_id = 102 LIMIT 1); 

--- CASE
SELECT branch_id,branch_name,
	CASE branch_id
		WHEN 1 THEN "No.1 Branch"
        WHEN 2 THEN "No.2 Branch"
        WHEN 3 THEN "No.3 Branch"
        WHEN 4 THEN "No.4 Branch"
        ELSE "No Branch"
	END AS 'Branch Rating'
FROM Branch;

SELECT branch_id,branch_name,
	CASE 
		WHEN branch_id = 1 THEN "No.1 Branch"
        WHEN branch_id = 2 THEN "No.2 Branch"
        WHEN branch_id = 3 THEN "No.3 Branch"
        WHEN branch_id = 4 THEN "No.4 Branch"
        ELSE "No Branch"
	END AS 'Branch Rating'
FROM Branch;

SELECT empl_id,client_id,total_sales,
	CASE
		WHEN total_sales >= 100000 THEN 'Top Sales'
        WHEN total_sales < 100000 AND total_sales >= 30000 THEN 'Average Sales'
        WHEN total_sales < 30000 AND total_sales >= 10000 THEN 'Below Average Sales'
        ELSE 'Poor Sales'
	END AS 'Sales Performance'
FROM Works_with;

select * from Works_with;

--- SUBQUERIES
--- Show the Employee Name who is having the highest salary in branch 3
SELECT empl_id,first_name,last_name,salary FROM Employee
WHERE branch_id = 3 AND salary = (SELECT MAX(salary) FROM Employee WHERE branch_id = 3);

--- Show the Employee Name who is having the second highest salary in branch 3
SELECT empl_id,first_name,last_name,salary FROM Employee
WHERE branch_id = 3 AND salary = (SELECT MAX(salary) FROM Employee
WHERE branch_id = 3 AND salary <> (SELECT MAX(salary) FROM Employee WHERE branch_id = 3));

SELECT empl_id,first_name,last_name,salary,branch_id FROM Employee 
WHERE branch_id IN (SELECT branch_id FROM Employee GROUP BY branch_id HAVING COUNT(*) <= 2);

SELECT branch_id,AVG(salary) FROM Employee GROUP BY branch_id;

SELECT empl_id,first_name,last_name,salary,branch_id FROM Employee e
WHERE salary > (SELECT AVG(salary) FROM Employee WHERE branch_id = e.branch_id);

--- WITH CTE
WITH cte_avgsalary AS
(SELECT branch_id ,AVG(salary) AS 'Avg.Salary' FROM Employee GROUP BY branch_id)
SELECT empl_id,first_name,last_name,e.branch_id,salary FROM Employee e
INNER JOIN cte_avgsalary c ON e.branch_id = c.branch_id AND e.salary > c.`Avg.Salary`;

--- Windows Function
--- Aggregate Window Functions
SELECT empl_id,first_name,last_name,branch_id,salary, 
AVG(salary) OVER(Partition By branch_id) AS 'Avg.Salary', 
COUNT(*) OVER(Partition By branch_id) AS 'No.of Employees',
MAX(salary) OVER(Partition By branch_id) AS 'Max.Salary',
MIN(salary) OVER(Partition By branch_id) AS 'Min.Salary'
FROM Employee;

SELECT empl_id,first_name,last_name,branch_id,salary, 
SUM(salary) OVER (ORDER BY branch_id RANGE BETWEEN UNBOUNDED PRECEDING 
AND CURRENT ROW) AS 'Running Total',
SUM(salary) OVER (ORDER BY branch_id ROWS BETWEEN UNBOUNDED PRECEDING 
AND UNBOUNDED FOLLOWING) AS 'Total'
FROM Employee;

--- Ranking Window Functions
SELECT empl_id,first_name,last_name,branch_id,salary, 
ROW_NUMBER() OVER(Partition By branch_id ORDER BY salary DESC) AS 'Row Number', 
RANK() OVER(Partition By branch_id ORDER BY salary DESC) AS 'Rank',
DENSE_RANK() OVER (Partition By branch_id ORDER BY salary DESC) AS 'Dense_Rank'
FROM Employee;

SELECT first_name,SUM(salary) AS Salary,
NTILE(10) OVER(ORDER BY SUM(salary) DESC) AS Segregation
FROM Employee GROUP BY first_name;

SELECT first_name,Salary,Segregation FROM(
    SELECT first_name,SUM(salary) AS Salary,
    NTILE(10) OVER(ORDER BY SUM(salary) DESC)AS Segregation
    FROM Employee GROUP BY first_name) AS DerivedTable
WHERE Segregation =1 OR Segregation = 9;

--- VALUE WINDOW FUNCTIONS
SELECT empl_id,first_name,last_name,branch_id,salary, 
    LAG(salary,1,-1) OVER(ORDER BY salary) AS 'Prev Value', 
    LEAD(salary,1,-1) OVER(ORDER BY salary) AS 'Next Value',
FROM Employee;

SELECT empl_id,first_name,last_name,branch_id,salary, 
    LAG(salary,1,-1) OVER(ORDER BY salary) AS 'Prev Value', 
    LEAD(salary,1,-1) OVER(ORDER BY salary) AS 'Next Value',
FROM Employee;

SELECT empl_id,first_name,last_name,branch_id,salary, 
    FIRST_VALUE(salary) OVER(ORDER BY salary) AS 'First Value',
    FIRST_VALUE(salary) OVER(PARTITION BY branch_id ORDER BY salary RANGE BETWEEN UNBOUNDED PRECEDING 
    AND CURRENT ROW) AS 'First Value 1',
    LAST_VALUE(salary) OVER(ORDER BY salary) AS 'Last Value'
    LAST_VALUE(salary) OVER(PARTITION BY branch_id ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING 
    AND UNBOUNDED FOLLOWING) AS 'Last Value 1'
FROM Employee;

--- ON DELETE 
DELETE FROM Employee WHERE empl_id = 102; 
SELECT * FROM Employee; 
SELECT * FROM Branch; 
select * from `Client`; 

DELETE FROM Branch WHERE branch_id = 2; 
SELECT * FROM Branch_supplier;