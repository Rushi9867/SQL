CREATE DATABASE  IF NOT EXISTS superstore;

USE superstore;

SELECT *FROM superstore;

ALTER TABLE superstore RENAME COLUMN `ï»¿Order ID` TO 'Order ID' VARCHAR(50);

-- >,=,AND,OR,NOT
SELECT *FROM superstore WHERE Quantity = 14;

SELECT *FROM superstore WHERE Region = 'East' AND Quantity > 4;

SELECT *FROM superstore WHERE Region = 'East' OR Quantity > 4;

SELECT *FROM superstore WHERE NOT Region = 'East';

SELECT *FROM superstore WHERE Region <> 'East';

-- BETWEEN
SELECT *FROM superstore WHERE Quantity BETWEEN 3 AND 7;

SELECT *FROM superstore WHERE Quantity NOT BETWEEN 3 AND 7;

-- DISTINCT
SELECT DISTINCT Region FROM superstore;

-- IN, NOT IN
SELECT *FROM superstore WHERE Region IN ('South','Central','East');

SELECT *FROM superstore WHERE Region NOT IN ('South','Central','East');

-- IS NULL,IS NOT NULL
SELECT *FROM superstore WHERE Category IS NULL;

SELECT *FROM superstore WHERE Category IS NOT NULL;

SELECT *FROM superstore WHERE Category IS NULL AND `Ship Mode` IS NULL;

SELECT *FROM superstore WHERE Category IS NULL OR `Ship Mode` IS NOT NULL;

-- LIKE
SELECT *FROM superstore WHERE `Customer Name` LIKE 'C%'; 

SELECT *FROM superstore WHERE `Customer Name` LIKE '%e'; 

SELECT *FROM superstore WHERE `Customer Name` LIKE 'A%e'; 

SELECT *FROM superstore WHERE Segment LIKE '%e'; 

-- TOP 10 Records with ORDER BY ,DESC,ASC
SELECT *FROM superstore ORDER BY Quantity DESC,`Customer Name` ASC LIMIT 10;

-- COUNT
SELECT COUNT(*) AS 'No.of Records' FROM superstore;

-- SUM
SELECT SUM(Quantity) AS 'SUM' FROM superstore;

-- AVG
SELECT AVG(Quantity) AS 'Average' FROM superstore;

-- GROUPBY,HAVING
SELECT Category, ROUND(AVG(Sales),2) AS 'Avg Sales' FROM superstore 
GROUP BY Category;

-- ROUND,AVG,GROUP BY, HAVING
SELECT Category, ROUND(AVG(Sales),2) AS 'Avg Sales' FROM superstore 
GROUP BY Category HAVING ROUND(AVG(Sales),2) > 250.00;

-- CONCAT
SELECT `ï»¿Order ID`,CONCAT(City,' ',State) AS Address FROM superstore;

-- LENGTH
SELECT `Product Name`,LENGTH(`Product Name`) AS Length FROM superstore;

-- LOWER
SELECT `Product ID`,LOWER(`Product Name`) AS Lower FROM superstore;

-- UPPER
SELECT `Product ID`,UPPER(`Product Name`) AS Upper FROM superstore;

-- SUBSTRING
SELECT `Product ID`,SUBSTRING(`Product ID`,8,9) AS ID FROM superstore;

-- LTRIM,RTRIM
SELECT LTRIM(RTRIM('               Hello              ')) AS Example;

SELECT *FROM superstore;
