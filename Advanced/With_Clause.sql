/* Youtube Link: https://youtu.be/WHBH0yz35_8?si=YhsAd7JXjTKVgRGU */

Show Databases;

Create Database Adv_Sql;

Use Adv_Sql;

DROP TABLE IF EXISTS Customer;

Create Table Customer(
Cust_Id INT,
First_Name Varchar(20),
Last_Name Varchar(20),
Address_id INT);

INSERT INTO Customer VALUES(1,'Mary','Smith',5);
INSERT INTO Customer VALUES(3,'Linda','Williams',7);
INSERT INTO Customer VALUES(4,'Barbara','Jones',8);
INSERT INTO Customer VALUES(2,'Madan','Mohan',6);
INSERT INTO Customer VALUES(17,'R','Madhav',9);

ALTER TABLE Customer ADD PRIMARY KEY (Cust_Id);
SELECT *FROM Customer;

DROP TABLE IF EXISTS Payment;

Create Table Payment(
Customer_Id INT,
amount INT,
`mode` Varchar(20),
payment_date DATE);

-- FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id));

INSERT INTO Payment VALUES(1,60,'Cash','2020-09-24');
INSERT INTO Payment VALUES(11,80,'Cash','2021-03-01');
INSERT INTO Payment VALUES(2,500,'Credit Card','2020-04-27');
INSERT INTO Payment VALUES(8,100,'Cash','2021-01-26');
INSERT INTO Payment VALUES(7,20,'Mobile Payment','2021-02-01');
INSERT INTO Payment VALUES(17,250,'Credit Card','2021-04-01');
INSERT INTO Payment VALUES(10,70,'Mobile Payment','2021-02-28');

SELECT *FROM Payment;

WITH  my_cte AS(
	SELECT *,AVG(amount) OVER (ORDER BY p.Customer_Id) AS "Average_Price",
    COUNT(Address_id) OVER (ORDER BY c.Cust_Id) AS "Count" FROM Payment AS p
    INNER JOIN Customer AS c ON p.Customer_Id = c.Cust_Id
)
SELECT * FROM my_cte;

WITH my_cp AS(
	SELECT MODE,MAX(amount) AS Highest_Price, SUM(amount) AS Total_Price
    FROM Payment GROUP BY MODE
)
SELECT Payment.* ,my.Highest_Price,my.Total_Price
FROM Payment JOIN my_cp my ON Payment.mode = my.MODE
ORDER BY Payment.mode;

WITH RECURSIVE my_CTE AS(
	SELECT 1 AS n    -- base query
    
    UNION ALL 
    
    SELECT n+1 FROM my_CTE WHERE n<3 -- Recursive Query
)
SELECT *FROM my_CTE;

CREATE TABLE employee (
emp_id serial PRIMARY KEY,
emp_name VARCHAR(20) NOT NULL,
manager_id INT);

INSERT INTO employee VALUES(1, 'Madhav', NULL);
INSERT INTO employee VALUES(2, 'Sam', 1);
INSERT INTO employee VALUES(3, 'Tom', 2);
INSERT INTO employee VALUES(4, 'Arjun', 6);
INSERT INTO employee VALUES(5, 'Shiva', 4);
INSERT INTO employee VALUES(6, 'Keshav', 1);
INSERT INTO employee VALUES(7, 'Damodar', 5);

SELECT *FROM employee;

WITH RECURSIVE EmpCTE AS(
	-- Anchor Query
	SELECT emp_id,emp_name,manager_id 
    FROM employee WHERE emp_id = 7
    
    UNION ALL 
    -- Recursive Query
    Select e.emp_id,e.emp_name,e.manager_id
    FROM employee AS e JOIN EmpCTE 
    ON e.emp_id = EmpCTE.manager_id
)

SELECT *FROM EmpCTE;

DROP TABLE IF EXISTS Employees;

Create table Employees(
EmployeeId INT,
FirstName varchar(20),
LastName Varchar(20),
ManagerId INT);

INSERT INTO Employees VALUES (1, 'Harper', 'Westbrook', NULL);
INSERT INTO Employees VALUES (2, 'Liam', 'Carrington', 1);
INSERT INTO Employees VALUES (3, 'Evelyn', 'Radcliffe', 1);
INSERT INTO Employees VALUES (4, 'Mason', 'Albright', 2);
INSERT INTO Employees VALUES (5, 'Isla', 'Whitman', 2);
INSERT INTO Employees VALUES (6, 'Noah', 'Sterling', 3);
INSERT INTO Employees VALUES (7, 'Ruby', 'Lennox', 3);
INSERT INTO Employees VALUES (8, 'Caleb', 'Winslow', 5);
INSERT INTO Employees VALUES (9, 'Avery', 'Sinclair', 6);
INSERT INTO Employees VALUES (10, 'Oliver', 'Beckett', 6);

SELECT *FROM EMPLOYEES;

-- Recursive Common Table Expressions
-- A recursive common table expression is one having a subquery that refers to its own name.

WITH RECURSIVE cteReports (EmpID, FirstName, LastName, MgrID, EmpLevel)
  AS
  (
    SELECT EmployeeID, FirstName, LastName, ManagerID, 1
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmployeeID, e.FirstName, e.LastName, e.ManagerID, 
      r.EmpLevel + 1
    FROM Employees e
      INNER JOIN cteReports r
        ON e.ManagerID = r.EmpID
  )
SELECT
  CONCAT(FirstName,' ',LastName) AS FullName, 
  EmpLevel,
  (SELECT CONCAT(FirstName,' ',LastName) FROM Employees 
    WHERE EmployeeID = cteReports.MgrID) AS Manager
FROM cteReports 
ORDER BY EmpLevel, MgrID;
