CREATE DATABASE IQA;
SHOW DATABASES;
USE IQA;

CREATE TABLE Travel(
`Source` VARCHAR(20),
Destination VARCHAR(20),
Distance INT);

INSERT INTO Travel VALUES('Mumbai','Bangalore',500);
INSERT INTO Travel VALUES('Bangalore','Mumbai',500);
INSERT INTO Travel VALUES('Delhi','Mathura',150);
INSERT INTO Travel VALUES('Mathura','Delhi',150);
INSERT INTO Travel VALUES('Nagpur','Pune',500);
INSERT INTO Travel VALUES('Pune','Nagpur',500);

SELECT *FROM Travel;

/* What is Greatest and LEAST Function */
SELECT GREATEST(2,23,11,67,98,5,45,77);
SELECT LEAST(2,23,11,67,98,5,45,77);

SELECT GREATEST('Akash','Vayu','Dharati');
SELECT LEAST('Akash','Vayu','Dharati');

-- Answer Method 1
SELECT GREATEST(`Source`,Destination),LEAST(`Source`,Destination),MAX(Distance)
FROM Travel 
GROUP BY GREATEST(`Source`,Destination),LEAST(`Source`,Destination);

-- Answer Method 2

WITH cte AS(
	SELECT *, ROW_NUMBER() OVER() AS Sno FROM Travel)
SELECT t1.* FROM cte AS t1 JOIN cte AS t2 
ON t1.`Source`= t2.Destination AND t1.Sno < t2.Sno;

