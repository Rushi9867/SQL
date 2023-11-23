-- Q 51. A country is big if:
-- ● it has an area of at least three million (i.e., 3000000 km2), or
-- ● it has a population of at least twenty-five million (i.e., 25000000).
-- Write an SQL query to report the name, population, and area of the big countries.
-- Return the result table in any order.
CREATE DATABASE PPT;
USE PPT;
CREATE TABLE WORLD(
   NAME VARCHAR(20) PRIMARY KEY,
   CONTINENT VARCHAR(15),
   AREA BIGINT,
   POPULATION BIGINT,
   GDP BIGINT);
   
INSERT INTO WORLD VALUES('Afghanistan','Asia',652230,25500100,20343000000);
INSERT INTO WORLD VALUES('Albania','Europe',28748,2831741,12960000000);
INSERT INTO WORLD VALUES('Algeria','Africa',2381741,37100000,188681000000);
INSERT INTO WORLD VALUES('Andorra','Europe',468,78115,3712000000);
INSERT INTO WORLD VALUES('Angola','Africa',1246700,20609294,100990000000);

SELECT * FROM WORLD;

SELECT NAME,AREA,POPULATION FROM WORLD WHERE AREA >= 3000000 OR POPULATION >= 25000000;

-- Q52. Write an SQL query to report the names of the customer that are not referred by the customer with id= 2.

CREATE TABLE CUSTOMER(
	ID INT PRIMARY KEY,
    NAME VARCHAR(8),
    REFREE_ID INT);

INSERT INTO CUSTOMER VALUES(1,'Will',Null);
INSERT INTO CUSTOMER VALUES(2,'Jane',Null);
INSERT INTO CUSTOMER VALUES(3,'Alex',2);
INSERT INTO CUSTOMER VALUES(4,'Bill',Null);
INSERT INTO CUSTOMER VALUES(5,'Zack',1);
INSERT INTO CUSTOMER VALUES(6,'Mark',2);

SELECT * FROM CUSTOMER;

SELECT NAME FROM CUSTOMER WHERE REFREE_ID <> 2 OR REFREE_ID IS NULL;

-- Q53. Write an SQL query to report all customers who never order anything.

CREATE TABLE CUSTOMERS(
	ID INT PRIMARY KEY,
    NAME VARCHAR(10));
    
CREATE TABLE ORDERS(
	ID INT PRIMARY KEY,
    CUSTOMERID INT ,
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS(ID));

INSERT INTO CUSTOMERS VALUES(1,'Joe'),(2,'Henry'),(3,'Sam'),(4,'Max');
INSERT INTO ORDERS VALUES(1,3),(2,1);

SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;

SELECT C.NAME FROM CUSTOMERS C
LEFT JOIN
ORDERS O on C.ID = O.CUSTOMERID
WHERE O.ID IS NULL;

-- Q54. Write an SQL query to find the team size of each of the employees.
-- Explanation:
-- Employees with Id 1,2,3 are part of a team with team_id = 8.
-- Employee with Id 4 is part of a team with team_id = 7.
-- Employees with Id 5,6 are part of a team with team_id = 9.

CREATE TABLE EMPLOYEE(
	EMPLOYEE_ID INT PRIMARY KEY,
    TEAM_ID INT);
    
INSERT INTO EMPLOYEE VALUES(1,8),(2,8),(3,8),(4,7),(5,9),(6,9);
SELECT * FROM EMPLOYEE;

SELECT COUNT(TEAM_ID) OVER (PARTITION BY TEAM_ID) AS TEAM_SIZE
FROM EMPLOYEE ORDER BY EMPLOYEE_ID;

-- Q55. A telecommunications company wants to invest in new countries. The company intends to invest in
-- the countries where the average call duration of the calls in this country is strictly greater than the
-- global average call duration.
-- Write an SQL query to find the countries where this company can invest.
-- Explanation:
-- The average call duration for Peru is (102 + 102 + 330 + 330 + 5 + 5) / 6 = 145.666667
-- The average call duration for Israel is (33 + 4 + 13 + 13 + 3 + 1 + 1 + 7) / 8 = 9.37500
-- The average call duration for Morocco is (33 + 4 + 59 + 59 + 3 + 7) / 6 = 27.5000
-- Global call duration average = (2 * (33 + 4 + 59 + 102 + 330 + 5 + 13 + 3 + 1 + 7)) / 20 = 55.70000
-- Since Peru is the only country where the average call duration is greater than the global average, it is
-- the only recommended country.

-- Q56. Write an SQL query to report the device that is first logged in for each player.

CREATE TABLE ACTIVITY(
	PLAYER_ID INT,
    DEVICE_ID INT,
    EVENT_DATE DATE,
    GAMES_PLAYED INT,
    PRIMARY KEY (PLAYER_ID,EVENT_DATE) );
    
INSERT INTO ACTIVITY VALUES(1,2,'2016-03-01',5),(1,2,'2016-05-02',6),(2,3,'2017-06-25',1),
(3,1,'2016-03-02',0),(3,4,'2018-07-03',5);

SELECT * FROM ACTIVITY;
select t.player_id, t.device_id from (select player_id, device_id, row_number() 
over (partition by player_id order by event_date) as num 
from activity)t where t.num = 1;

-- Q57. Write an SQL query to find the customer_number for the customer who has placed the largest number
-- of orders.
-- The test cases are generated so that exactly one customer will have placed more orders than any
-- other customer

CREATE TABLE ORDERS1(
	ORDER_NUMBER INT PRIMARY KEY,
    CUSTOMER_NUMBER INT);

INSERT INTO ORDERS1 VALUES(1,1),(2,2),(3,3),(4,3);

SELECT * FROM ORDERS1;

SELECT CUSTOMER_NUMBER FROM ORDERS1 GROUP BY(CUSTOMER_NUMBER) 
ORDER BY COUNT(ORDER_NUMBER) DESC LIMIT 1;

