USE iNeuron;

SELECT *FROM Employee_Data;

SELECT *FROM Employee_info;

### SUBQUERY
SELECT Emp_id from Employee_Data
WHERE Emp_id in (select Emp_id from Employee_info
where Department = "IT");

SELECT *FROM product;
## Display Products where product_price is greater than avg product price
select product_desc, product_class_code, product_price from product
where PRODUCT_PRICE > (select avg(product_price) from product);

# select Product greater than the average price of their product_class

select product_desc, product_class_code, product_price from product p
where PRODUCT_PRICE > (select avg(PRODUCT_PRICE) from product
where PRODUCT_CLASS_CODE = p.product_class_code);

select product_class_code,avg(product_price) from product
GROUP BY product_class_code;

use hr_data;

SHOW TABLES;

select * from employees;

select * from employees e 
where salary > (select avg(salary) from employees
where department_id = e.department_id);

select department_id ,round(avg(salary),0) as Avg_salary from employees
GROUP BY department_id;

## Retrieve customers details whose orders contain a specific payment_mode.
use ineuron;
SELECT *FROM order_header;

SELECT customer_fname, customer_id, customer_creation_date FROM online_customer
WHERE customer_id in (SELECT customer_id FROM order_header WHERE payment_mode = "cash");

SELECT customer_fname, customer_id, customer_creation_date FROM online_customer
WHERE customer_id in (SELECT customer_id FROM order_header WHERE payment_mode = "Credit Card");

## Display Data of Depatments whose avg Salary is greater than Overall average salary
USE hr_data;
SELECT department_id, count(employee_id) as Total_Employees, round(avg(salary),0) as Avg_Salary from employees 
group by department_id HAVING avg(salary) > (select avg(salary) from employees);

select avg(salary) from employees;

select department_id from employees
GROUP BY department_id;

## Countries where Life Expectancy is Gretaer than that of USA
USE world;

SELECT *FROM country;

SELECT *FROM country WHERE Region = "Caribbean";

SELECT *FROM country 
WHERE Population > (SELECT AVG(Population) FROM country);

SELECT *FROM country WHERE continent = "North America" OR SurfaceArea > 100000;

SELECT LifeExpectancy FROM country WHERE Code = "USA";

SELECT Name FROM country 
WHERE LifeExpectancy > (SELECT LifeExpectancy FROM country WHERE Code = "USA");

SELECT *FROM city;

SELECT Name FROM city WHERE CountryCode = "USA";

USE ineuron;

SELECT *FROM online_customer;

SELECT *FROM order_header;

SELECT Customer_id,payment_mode FROM order_header
WHERE Customer_id NOT IN (SELECT Customer_id FROM order_header
   WHERE Payment_mode <> 'Cash'
) and payment_mode is not null;

USE hr_data;

SELECT  *FROM employees;

SELECT department_id, COUNT(Employee_id) AS Employees FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
GROUP BY department_id
ORDER BY Employees DESC;

SELECT first_name, department_id FROM employees
WHERE department_id = 50;

USE ineuron;

SELECT *FROM order_header;

SELECT *FROM online_customer
WHERE customer_id IN 
(SELECT customer_id FROM order_header WHERE Payment_mode = "cash");

SELECT *FROM online_customer
WHERE customer_id IN 
(SELECT customer_id FROM order_header WHERE order_status = "In Process");

