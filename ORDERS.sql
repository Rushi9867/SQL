SELECT name, database_id, create_date  FROM sys.databases;  

USE iNeuron;

SELECT table_name, table_schema, table_type FROM information_schema.tables ORDER BY table_name ASC;

SELECT *FROM customers;

SELECT customerNumber,customerName,contactLastName,contactFirstName,phone,city,country from customers
ORDER BY creditLimit desc,postalcode;

SELECT *FROM customers WHERE country = 'USA';

SELECT *FROM products;

SELECT *FROM products WHERE quantityInStock > 3000 AND buyPrice > 70.00;

SELECT productCode as PC,productName as PN, productDescription AS PD,quantityInStock AS QS,
buyPrice AS BP,MSRP FROM products WHERE quantityInStock > 3000 AND buyPrice > 70.00;

SELECT productCode as PC,productName as PN, productDescription AS PD,quantityInStock AS QS,
buyPrice AS BP,MSRP FROM products WHERE quantityInStock > 3000 OR buyPrice > 70.00;

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE productDescription LIKE '%doors%';

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE productDescription LIKE '% cuda %';

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE productLine LIKE 'M%';

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE productLine LIKE '%o__r%';

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE productLine LIKE '%a___c%';

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE buyPrice BETWEEN 70.00 AND 100.00;

SELECT productCode as PC,productName as PN,productLine AS PL,productVendor AS PV,productDescription AS PD,
MSRP FROM products WHERE buyPrice BETWEEN 70.00 AND 100.00 AND MSRP >= 150.00;

SELECT *FROM products WHERE  buyPrice > 70.00;

SELECT *FROM products WHERE NOT buyPrice > 70.00;

SELECT *FROM products WHERE  MSRP > 150.00;

SELECT *FROM products WHERE  MSRP <> 150.62;

SELECT *FROM products;

SELECT *FROM employees;

SELECT *FROM employees WHERE jobTitle LIKE 'VP%';

SELECT *FROM employees WHERE jobTitle LIKE 'P%';

SELECT *FROM employees WHERE jobTitle LIKE 's%';

USE ineuron;

SELECT *FROM product;

SELECT *FROM product WHERE product_desc LIKE '%Nikon%';

SELECT *FROM product WHERE product_desc LIKE '%Samsung%';

SELECT *FROM product WHERE product_desc LIKE '%LG%';

SELECT *FROM product WHERE product_desc LIKE '%s__o%';

SELECT *FROM product WHERE product_quantity_avail BETWEEN 10 AND 100
ORDER BY product_quantity_avail DESC;

USE hr_data;

SELECT *FROM employees WHERE first_name BETWEEN "Aman" AND "Lohan"
ORDER BY first_name;

SELECT employeeNumber AS EN,firstName,jobTitle,officeCode FROM employees 
WHERE officeCode NOT IN(4,5,6) ORDER BY officeCode;

SELECT employeeNumber AS EN,firstName,jobTitle,officeCode FROM employees 
WHERE officeCode IN(4,5,6,7) ORDER BY officeCode;

SELECT employeeNumber AS EN,firstName,jobTitle,officeCode FROM employees 
WHERE officeCode NOT IN(4,5,6,7) ORDER BY officeCode;

SELECT *FROM payments;

SELECT *FROM payments WHERE customerNumber > 200 AND amount > 25000.00;

SELECT *FROM payments WHERE customerNumber > 200 OR amount > 25000.00;

SELECT *FROM payments WHERE NOT customerNumber > 200 AND amount > 25000.00;

SELECT *FROM payments WHERE NOT customerNumber > 200 OR amount > 25000.00;

SELECT *FROM payments WHERE NOT customerNumber > 200 AND NOT amount > 25000.00;

SELECT *FROM payments WHERE NOT customerNumber > 200 OR NOT amount > 25000.00;

SELECT *FROM payments WHERE amount <> 25000.00;

SELECT *FROM payments LIMIT 50;

SELECT *FROM payments LIMIT 5 OFFSET 7;


SELECT *FROM payments ORDER BY amount DESC LIMIT 5 OFFSET 98;

#SELECT *FROM payments ORDER BY amount OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY;

#SELECT *FROM payments ORDER BY amount OFFSET 90 ROWS FETCH FIRST 15 ROWS ONLY;

SELECT  customerNumber,checkNumber,amount FROM payments ORDER BY  customerNumber;

SELECT employeeNumber,officeCode,jobTitle  FROM employees ORDER BY employeeNumber;

USE SAKILA;

SELECT *FROM payment;

SELECT *FROM payment WHERE customer_id > 30 AND amount > 8.99;

SELECT *FROM payment WHERE NOT customer_id > 30 AND amount > 8.99;

SELECT *FROM payment WHERE NOT customer_id > 30 AND NOT amount > 8.99;

## String Functions
USE iNeuron;

SELECT *FROM customers;

SELECT customerNumber,contactFirstName,contactLastName,
CONCAT(contactFirstName," ",contactLastName) AS FULL_NAME,customerName
FROM customers;

SELECT customerNumber,contactFirstName,contactLastName,LOWER(contactFirstName) 
AS First_NAME FROM customers;

SELECT customerNumber,contactFirstName,contactLastName,LENGTH(contactLastName) 
AS Last_NAME FROM customers;

SELECT customerNumber,contactFirstName,contactLastName,addressLine1,LENGTH(addressLine1) 
AS Address FROM customers;

USE World;

SELECT *FROM country WHERE LifeExpectancy IS NULL;

SELECT *FROM country WHERE LifeExpectancy IS NULL AND GNPOld IS NULL;

UPDATE country SET LifeExpectancy = 0 WHERE LifeExpectancy IS NULL;

SELECT *FROM country WHERE GNPOld IS NULL;

UPDATE country SET GNPOld = 0 WHERE GNPOld IS NULL;

USE ineuron;

SELECT *FROM online_customer;

UPDATE online_customer SET customer_phone = customer_phone + 5;

CREATE DATABASE HR_Data;

USE HR_Data;

CREATE TABLE `employees` (
  `employee_id` int unsigned NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(25) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `commission_pct` decimal(2,2) DEFAULT NULL,
  `manager_id` int unsigned DEFAULT NULL,
  `department_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
);

INSERT INTO `employees` VALUES (1,'Aman','Sharma','715.234.4577','1977-06-16','AD_VP',34000.00,NULL,20,50),(2,'Gopi','Kumar','715.134.8765','1979-09-27','AD_PRES',29000.00,NULL,60,50),(3,'Laxman','Dubey','915.173.8969','1983-01-23','AD_VP',28000.00,NULL,20,50),(4,'Abhishek','Sharma','901.765.7869','1996-01-30','FI_MGR',15000.00,NULL,80,70),(5,'Bhuvan','Bhosle','999.673.9878','1982-05-01','FI_MGR',13000.00,NULL,80,70),(6,'Danny','Devgan','902.876.9498','1987-06-12','FI_MGR',11000.00,NULL,80,70),(7,'Velur','Patel','987.654.9765','1992-02-27','FI_MGR',16000.00,NULL,80,70),(8,'Akshay','Upadhyay','922.354.9786','1981-03-18','FI_MGR',13500.00,NULL,80,70),(9,'Nitin','Gautam','782.144.9865','1987-09-12','IT_PROG',4700.00,NULL,40,10),(10,'Abhishek','Fandnavis','782.098.7480','1999-11-10','IT_PROG',5700.00,NULL,40,10),(11,'Jack','Carle','678.986.7456','1999-12-09','IT_PROG',9300.00,NULL,40,10),(12,'Ishan','Malik','895.785.9724','1987-09-15','IT_PROG',9100.00,NULL,40,10),(13,'Usmaan','Sheikh','762.952.7693','1998-04-29','IT_PROG',7700.00,NULL,40,10),(14,'Lohan','Kumar','667.984.1098','1992-12-18','IT_PROG',8500.00,NULL,40,10),(15,'Abhyuday','Sahu','624.960.2867','1998-11-11','FI_ACCOUNT',19000.00,NULL,111,99),(16,'Gaurav','Sharma','748.539.9750','1996-04-14','FI_ACCOUNT',16000.00,NULL,111,99),(17,'Sheikh','Hamza','867.567.9723','1989-11-30','FI_ACCOUNT',11000.00,NULL,111,99),(18,'Hussain','Malik','978.149.9758','1982-06-12','FI_ACCOUNT',13200.00,NULL,111,99),(19,'Gustav','Khan','978.213.9784','1993-01-11','FI_ACCOUNT',14600.00,NULL,111,99),(20,'Karan','Malhotra','764.859.2547','1989-08-15','FI_ACCOUNT',11200.00,NULL,111,99),(21,'Manish','Juneja','761.398.6745','1992-06-23','PU_CLERK',3500.00,NULL,121,77),(22,'Udham','Singh','756.867.9784','1993-05-29','PU_CLERK',4500.00,NULL,121,77),(23,'Payal','Meena','876.087.2756','1985-05-17','PU_CLERK',6300.00,NULL,121,77),(24,'Aradhna','Singh','340.867.8724','1987-11-12','PU_CLERK',7600.00,NULL,121,77),(25,'Kamini','Beniwal','879.378.6502','1989-01-11','PU_CLERK',8100.00,NULL,121,77),(26,'Jagriti','Bahal','873.973.1856','1999-06-19','PU_CLERK',7900.00,NULL,121,77),(27,'Sang','Wuu','687.452.2769','1982-11-19','ST_CLERK',4000.00,NULL,177,22),(28,'Jamie','Lannister','756.769.1845','1998-01-21','ST_CLERK',3400.00,NULL,177,22),(29,'Nina','Dobrev','654.182.7684','1996-04-09','ST_CLERK',4300.00,NULL,177,22),(30,'Leslie','Winkle','879.435.9785','1976-04-21','ST_CLERK',2700.00,NULL,177,22),(31,'Mohammad','Salman','768.435.9784','1986-10-10','ST_CLERK',5600.00,NULL,177,22),(32,'Aakash','Mishra','657.269.8745','1999-06-19','ST_CLERK',3900.00,NULL,177,22),(33,'Niti','Palta','568.189.6578','2000-04-28','ST_CLERK',4100.00,NULL,177,22),(34,'Shina','Wilson','867.190.0076','1999-04-18','ST_CLERK',4800.00,NULL,177,22),(35,'Mitchell','Robert','875.436.0002','1978-10-02','ST_CLERK',7800.00,NULL,177,22),(36,'Lee','San','645.187.9754','1998-09-11','ST_CLERK',4500.00,NULL,177,22),(37,'Sania','Keech','431.896.7665','1993-02-28','ST_CLERK',3300.00,NULL,177,22),(38,'Rachel','Downey','759.124.8479','1990-05-23','ST_CLERK',5300.00,NULL,177,22),(39,'Rose','Khan','786.772.9875','1989-01-11','ST_CLERK',4700.00,NULL,177,22),(40,'Shalini','Kumar','991.867.9549','1978-03-21','ST_CLERK',3100.00,NULL,177,22),(41,'Sneha','Ghosh','867.823.8963','1988-02-11','ST_CLERK',4400.00,NULL,177,22),(42,'Troy','Sharma','768.766.8877','1978-11-11','ST_CLERK',2400.00,NULL,177,22),(43,'Candy','Hussain','973.065.1365','1962-04-12','ST_CLERK',6200.00,NULL,177,22),(44,'Rishabh','Pant','789.232.9867','1979-04-01','ST_CLERK',3200.00,NULL,177,22),(45,'Purv','Vyas','476.978.2001','1991-06-11','ST_CLERK',4300.00,NULL,177,22),(46,'Jamilla','Pattinson','011.27.8765.980768','1975-09-10','ST_MAN',8000.00,0.15,1,55),(47,'Kevin','Peter','011.22.8675.967869','1993-04-10','ST_MAN',9500.00,0.25,1,55),(48,'Alpin','Liebo','011.22.9844.010135','1987-04-16','ST_MAN',8900.00,0.35,1,55),(49,'Hardik','Patel','011.88.6460.927543','1972-11-19','ST_MAN',10000.00,0.45,1,55),(50,'Elena','Koshka','011.56.9876.996622','1997-03-31','ST_MAN',14300.00,0.55,1,55),(51,'Ajay','Mishra','011.77.9897.979977','1999-04-11','SA_MAN',19000.00,0.22,7,45),(52,'Kapil','Sharma','011.33.9786.008866','1991-10-18','SA_MAN',17300.00,0.42,7,45),(53,'Samuel','Gill','011.99.8833.866740','1992-09-19','SA_MAN',11200.00,0.52,7,45),(54,'Chameli','Singh','011.68.7654.967486','1988-04-30','SA_MAN',10300.00,0.23,7,45),(55,'Nancy','Bisht','011.32.8674.968745','1976-04-18','SA_MAN',18700.00,0.43,7,45),(56,'Ujjwal','Seth','011.99.7689.987859','1995-08-13','SA_MAN',13200.00,0.23,7,45),(57,'Jasleen','Kaur','011.66.7689.756365','1999-04-10','SA_MAN',12100.00,0.52,7,45),(58,'Yasmeen','Nair','011.88.8765.867429','1987-05-18','SA_MAN',7600.00,0.48,7,45),(59,'Esha','Chopra','011.86.8974.978465','1978-02-10','SA_MAN',18200.00,0.51,7,45),(60,'Lovely','Pandey','011.88.8765.978537','1998-05-16','SA_MAN',6000.00,0.41,7,45),(61,'Rauf','Ali','011.77.8858.867689','1988-01-08','SA_MAN',9900.00,0.51,7,45),(62,'Sameer','Prem','011.55.8767.877568','1989-01-11','SA_MAN',14200.00,0.63,7,45),(63,'Claire','Jacobs','011.55.9787.864595','1999-02-17','SA_MAN',15100.00,0.37,7,45),(64,'Danish','Sidiqqui','011.55.8774.876435','1974-01-26','SA_MAN',11200.00,0.17,7,45),(65,'Manish','Sehgal','011.78.7654.678945','1994-05-13','SA_MAN',14300.00,0.19,7,45),(66,'Daksh','Singh','011.88.8674.8667403','1999-12-25','SA_MAN',7600.00,0.13,7,45),(67,'Saksham','Khera','011.55.7678.768545','1985-05-28','SA_MAN',7900.00,0.18,7,45),(68,'Daisy','Modi','011.55.8675.9667453','1979-04-29','SA_MAN',4500.00,0.35,7,45),(69,'Lavnya','Thakur','011.55.6745.867549','1986-04-18','SA_MAN',13200.00,0.32,7,45),(70,'Samarth','Taneja','011.55.8674.879543','1992-05-13','SA_MAN',12000.00,0.25,7,45),(71,'Tarun','Rana','011.76.6785.876453','1996-04-15','SA_MAN',16500.00,0.31,7,45),(72,'Vikas','Dubey','011.56.6574.765434','1985-02-16','SA_MAN',7800.00,0.33,7,45),(73,'Aditi','Sarkar','011.66.9373.885522','1993-04-02','SA_MAN',6200.00,0.21,7,45),(74,'Sundar','Pichai','011.53.8675.653987','1998-05-13','SA_MAN',4300.00,0.23,7,45),(75,'Manya','Dutt','011.42.8764.978653','1992-04-19','SA_MAN',15100.00,0.27,7,45),(76,'Aisha','Shome','011.56.7654.879345','1991-03-12','SA_MAN',4600.00,0.21,7,45),(77,'Justin','Scot','011.78.8754.756345','1999-06-13','SA_MAN',9800.00,0.34,7,45),(78,'Chen','Woo','011.67.6543.786543','2000-05-12','SA_MAN',5800.00,0.16,7,45),(79,'Karanveer','Shekhawat','011.45.8765.765432','2000-01-12','SA_MAN',6000.00,0.18,7,NULL),(80,'Sophie','Turner','011.55.8765.768457','1976-04-16','SA_MAN',5300.00,0.17,7,45),(81,'Hamza','Sheikh','765.875.8674','1993-11-13','SA_REP',4300.00,NULL,199,38),(82,'Azhar','Asim','765.765.8765','1999-01-15','SA_REP',4300.00,NULL,199,38),(83,'Mohit','Makhija','756.543.8764','2000-06-16','SA_REP',4300.00,NULL,199,38),(84,'Gaurav','Pandey','850.657.7654','1971-04-23','SA_REP',25000.00,NULL,199,38),(85,'Nandita','Mondal','543.876.6543','1975-11-15','SA_REP',18000.00,NULL,199,38),(86,'Arnav','Sharma','430.765.7654','1994-01-14','SA_REP',5600.00,NULL,199,38),(87,'Jesse','Pinkman','765.876.4365','1999-12-18','SA_REP',7800.00,NULL,199,38),(88,'Asim','Khan','674.765.7643','2001-03-19','SA_REP',8000.00,NULL,199,38),(89,'Ajay','Nagar','345.765.7632','1999-04-12','SA_REP',5900.00,NULL,199,38),(90,'Simmy','Jaiswal','987.762.4832','1999-12-08','SA_REP',7600.00,NULL,199,38),(91,'Tiffani','Jacobs','543.785.8675','2000-06-23','MK_MAN',9500.00,NULL,163,52),(92,'Rohit','Dhawan','867.978.9865','1989-01-25','MK_MAN',17600.00,NULL,163,52),(93,'Sakshi','Reddy','978.756.8674','1997-09-09','MK_MAN',20000.00,NULL,163,52),(94,'Brec','Bassigner','967.876.9784','1999-04-08','HR_REP',9900.00,NULL,189,69),(95,'Gopinath','Ramgopalan','432.643.8796','1978-09-05','HR_REP',13400.00,NULL,189,69),(96,'Vaani','Hasina','456.756.9786','1995-05-30','PR_REP',5600.00,NULL,186,73),(97,'Sunakshi','Motwani','870.912.9213','1995-05-11','PR_REP',8700.00,NULL,186,73),(98,'Chris','Hemsworth','968.678.7683','1992-07-01','PR_REP',7800.00,NULL,186,73),(99,'Alia','Kohli','234.876.6790','1998-11-30','PR_REP',6900.00,NULL,186,73),(100,'Durga','Singh','987.876.7659','1999-02-15','AC_MGR',7800.00,NULL,122,88),(101,'Atul','Bhagnani','645.987.7658','1996-11-19','AC_ACCOUNT',34000.00,NULL,125,89),(102,'Ashok','Mishra','543.765.8765','1979-03-27','AD_ASST',19000.00,NULL,129,19),(103,'Yaseer','Khan','798.234.9786','1993-12-19','MK_REP',9300.00,NULL,229,91);

SELECT *FROM `employees`;

# Abs(), Round(), Ceil, Floor
use ineuron;
SELECT *FROM payments;

SELECT *,ABS(amount) AS Amount FROM payments;

SELECT *,ROUND(ABS(amount),0) AS Amount FROM payments;

select ceil(-2.36);
select ceil(2.36);
select FLOOR(-2.36);
select FLOOR(2.36);
select round(sqrt(124),2);
select log(2.71);
SELECT exp(2);

USE hr_data;
USE HR_Data;

SELECT employee_id,first_name,Salary,round((Salary*0.15),0) AS BONUS
FROM employees;

SELECT *FROM employees ORDER BY Salary DESC LIMIT 5;

select employee_id,first_name,hire_date,year(hire_date) AS Year,
MONTH(hire_date) AS Month ,DAY(hire_date) AS Day from employees;

select employee_id,first_name,year(hire_date),(2024 - YEAR(hire_date))
as Employee_age from employees ORDER BY Employee_age DESC;

select employee_id,first_name,year(hire_date),
DATEDIFF(CURRENT_DATE,hire_date) as Employee_age from employees
ORDER BY Employee_age DESC;

USE HR_Data;

SELECT first_name,last_name,CONCAT(first_name," ",last_name) 
AS Full_Name,UPPER(first_name),LOWER(last_name) From employees;

SELECT Employee_id,first_name,job_id,
SUBSTRING_INDEX(job_id,'_',1) AS Department,
SUBSTRING_INDEX(job_id,'_',-1) AS Designation 
FROM employees;

USE World;

SELECT *FROM country;

SELECT Continent, SUM(Population) AS Total_Popul, 
SUM(SurfaceArea) AS Total_SurArea,AVG(LifeExpectancy) AS ALF
FROM country GROUP BY Continent HAVING AVG(LifeExpectancy) > 50
ORDER BY SUM(Population);

use ineuron;

CREATE TABLE `online_customer` (
  `CUSTOMER_ID` int DEFAULT NULL,
  `CUSTOMER_FNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_LNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(30) DEFAULT NULL,
  `CUSTOMER_PHONE` bigint DEFAULT NULL,
  `ADDRESS_ID` int DEFAULT NULL,
  `CUSTOMER_CREATION_DATE` date DEFAULT NULL,
  `CUSTOMER_USERNAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_GENDER` char(1) DEFAULT NULL,
  UNIQUE KEY `online_custid_indx` (`CUSTOMER_ID`),
  UNIQUE KEY `online_email_indx` (`CUSTOMER_EMAIL`)
);

INSERT INTO `online_customer` VALUES (1,'Jennifer','Wilson','jen_w@gmail.com',9776363306,909,'1991-06-01','jen_w','F'),(2,'Jackson','Davis','dave_jack@gmail.com',9886363307,910,'2001-06-12','dave_jack','M'),(3,'Komal','Choudhary','ch_komal@yahoo.co.IN',9178234526,911,'2002-06-26','komalc','F'),(4,'Wilfred','Jean','w_jean@gmail.com',9196257439,912,'2006-01-12','jeanw','M'),(6,'Anita','Goswami','agoswami@gmail.com',9873245623,914,'2006-03-13','anitag','F'),(7,'Ashwathi','Bhatt','ash_bhat@yahoo.co.IN',9773636307,915,'2007-04-15','abhatt','F'),(8,'Neetha','Castelina','neetha20@gmail.com',8196236362,916,'2011-08-16','cneeta','F'),(9,'Devika','Satish','devika_sa@gmail.com',9780945716,917,'2011-09-01','sdevika','F'),(10,'Bidhan','C.Roy','bidhanroy@yahoo.co.in',9886218583,918,'2011-10-23','bcroy','F'),(11,'Vikas','Jha','vikas.jha@gmail.com',9008812436,919,'2011-11-15','vjha','M'),(12,'Arul','Kumar.T','arulkumar@gmail.com',9902179894,920,'2011-12-03','akumar','M'),(13,'Ravi','Srinivasn','r_srinivasn@yahoo.co.in',9945466015,921,'2012-01-05','ravisri','M'),(14,'Avinash','Dutta','avinash.dutta@yahoo.co.in',9845100228,922,'2012-01-18','avdutta','M'),(15,'Jyoti','Sinha','jyotisinha@gmail.com',9987795155,923,'2012-01-31','jyo_s','F'),(16,'Vijay','Bollineni','vbollineni@gmail.com',7829012228,924,'2012-02-06','vbolli','M'),(17,'Prasad','Shetty','pshetty@yahoo.co.in',9731497821,925,'2012-02-26','shetty','M'),(18,'Suresh','Babu','sbabu@yahoo.co.in',9845969216,926,'2012-03-01','babu_s','M'),(19,'Bharti','Subhash','bhartis@gmail.com',9886870414,927,'2012-03-28','bha_subh','F'),(20,'Keshav','Jog','kesjog@yahoo.co.in',7942536789,928,'2012-04-06','jog_kes','M'),(5,'Ramya','Ravinder','ramya_r23@gmail.com',7732341567,913,'2006-02-12','rramya','F'),(21,'Alan','Silvestri','alan_silver@msn.com',9450465464,930,'2016-02-04','asilvestri','M'),(22,'Andrew','Stanton','andrew_stanton@yahoo.com',9806980253,931,'2013-05-23','astanton','M'),(23,'Anna','Pinnock','anna_pinnock@yahoo.com',8540548103,932,'2013-01-18','apinnock','F'),(24,'Brian','Grazer','brian_grazer@gmail.com',7599462567,933,'2009-12-28','bgrazer','M'),(25,'Bruno','Delbonnel','bruno_delbonnel@msn.com',9016687652,934,'2012-08-27','bdelbonnel','M'),(26,'Stephen','E. Rivkin','stephen_e. rivkin@msn.com',9860111721,935,'2010-03-04','srivkin','M'),(27,'Mali','Finn','mali_finn@yahoo.com',7373475035,936,'2006-01-14','mfinn','F'),(28,'Sayyed','Faraj','sayyed_faraj@gmail.com',8556784235,937,'2009-11-01','sfaraj','M'),(29,'Francine','Maisler','francine_maisler@gmail.com',8440046170,938,'2013-09-01','fmaisler','F'),(30,'Anita','Kohli','anita_kohli@yahoo.com',8631526613,939,'2010-10-24','akohli','F'),(31,'Thomas','Newman','thomas_nman@yahoo.com',9539300577,940,'2015-06-30','tnewman','M'),(32,'Hans','Zimmer','hans_zimmer@yahoo.com',8338774317,941,'2016-01-24','hzimmer','M'),(33,'Niseema','Zimmer','niseemaz@yahoo.com',8179413840,941,'2014-12-29','ntalli','F'),(34,'Hans','Zimmer','hans_zimmer@gmail.com',9477272235,943,'2015-09-27','hzimmer2','M'),(35,'Thomas','Newman','thomas_newman@gmail.com',9526577840,944,'2014-01-16','tnewman2','M'),(36,'Michelle','H. Shores','howard_shores@yahoo.com',8795007592,945,'2010-06-24','mshores','F'),(37,'James','Newton Howard','james_nhoward@yahoo.com',9520246368,946,'2012-07-06','jhoward','M'),(38,'John','Lasseter','john_lass@gmail.com',9876356288,947,'2016-09-02','jlasseter','M'),(39,'Liz','Mullane','liz_mullane@gmail.com',7859695387,948,'2006-03-29','lmullane','F'),(40,'Paul','Haggis','paul_haggis@gmail.com',8332681111,949,'2016-08-31','phaggis','M'),(41,'Tharman','Shanmugaratnam','tharshan@yahoo.co.sg',8572898929,950,'2009-11-20','tshanmugaratnam','M'),(42,'Rebecca','Lim','reblim@msn.co.sg',8272438365,951,'2009-07-31','rlim','F'),(43,'Rajiv','Chandrasekaran','rajiv_chan@yahoo.co.in',7431699965,952,'2014-04-14','rchan','M'),(44,'Tanya','Chua','tanyac@singers.sg',5435935345,953,'2014-04-14','tchua','F'),(45,'Janvi','Rajiv','janvi_jha@msn.co.sg',8324529953,952,'2015-04-14','jrajiv','F'),(46,'Tan Bee','Soo','tanbeesoo@yahoo.co.sg',8293092259,954,'2016-11-15','tsoo','F'),(47,'Yun','Zhu','yunzho@gmail.com',9407380992,955,'2016-11-15','yzhu','M'),(48,'Wajdi bin Abdul','Majeed','wajdiabdul@gmail.com',9380937709,956,'2010-06-25','wabdul','M'),(49,'Anbara binti','Mubarak','anmubarak@yahoo.co.my',7885803452,957,'2010-08-27','amubarak','F'),(50,'Sri binti ','Yaakob','sribinti@yahoo.co.my',8193579391,958,'2007-12-18','sribinti','F'),(51,'Ahmad Bin Gh','Azali','ahmad_bingh@yahoo.co.my',7348292313,959,'2010-05-14','abingh','M'),(52,'Suchirithaa','Ekanayake','suchiritha@msn.com',6538525924,960,'2016-11-15','sekanayake','F');

CREATE TABLE `order_header` (
  `ORDER_ID` int DEFAULT NULL,
  `CUSTOMER_ID` int DEFAULT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `ORDER_STATUS` varchar(10) DEFAULT NULL,
  `PAYMENT_MODE` varchar(20) DEFAULT NULL,
  `PAYMENT_DATE` date DEFAULT NULL,
  `ORDER_SHIPMENT_DATE` date DEFAULT NULL,
  `SHIPPER_ID` int DEFAULT NULL,
  UNIQUE KEY `PK_ORD_H` (`ORDER_ID`)
);

INSERT INTO `order_header` VALUES (10001,1,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10002,2,NULL,'Shipped','Cash',NULL,NULL,50001),(10003,5,NULL,'Shipped','Cash',NULL,NULL,50001),(10004,5,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10005,5,NULL,'In process','Credit Card',NULL,NULL,50002),(10006,6,NULL,'Shipped','Net Banking',NULL,NULL,50003),(10007,3,NULL,'Shipped','Cash',NULL,NULL,50004),(10008,7,NULL,'Shipped','Credit Card',NULL,NULL,50002),(10009,4,NULL,'Shipped','Credit Card',NULL,NULL,50003),(10010,6,NULL,'Shipped','Cash',NULL,NULL,50004),(10011,1,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10012,2,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10013,8,NULL,'Cancelled',NULL,NULL,NULL,NULL),(10014,9,NULL,'Shipped','Credit Card',NULL,NULL,50005),(10015,10,NULL,'Shipped','Credit Card',NULL,NULL,50003),(10016,8,NULL,'Shipped','Cash',NULL,NULL,50004),(10017,6,NULL,'Shipped','Cash',NULL,NULL,50004),(10018,11,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10019,12,NULL,'Shipped','Credit Card',NULL,NULL,50002),(10020,18,NULL,'In process','Net Banking',NULL,NULL,50003),(10021,25,NULL,'Shipped','Credit Card',NULL,NULL,50006),(10022,23,NULL,'Shipped','Credit Card',NULL,NULL,50006),(10023,36,NULL,'Shipped','Credit Card',NULL,NULL,50002),(10024,32,NULL,'Shipped','Net Banking',NULL,NULL,50005),(10025,28,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10026,21,NULL,'In process','Net Banking',NULL,NULL,NULL),(10027,23,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10028,23,NULL,'In process','Credit Card',NULL,NULL,NULL),(10029,25,NULL,'Shipped','Credit Card',NULL,NULL,50003),(10030,52,NULL,'Shipped','Credit Card',NULL,NULL,50006),(10031,33,NULL,'Cancelled',NULL,NULL,NULL,NULL),(10032,7,NULL,'Shipped','Credit Card',NULL,NULL,50003),(10033,28,NULL,'Shipped','Credit Card',NULL,NULL,50002),(10034,19,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10035,24,NULL,'Shipped','Net Banking',NULL,NULL,50004),(10036,24,NULL,'Shipped','Cash',NULL,NULL,50001),(10037,2,NULL,'Shipped','Cash',NULL,NULL,50005),(10038,46,NULL,'Shipped','Net Banking',NULL,NULL,50005),(10039,14,NULL,'Shipped','Net Banking',NULL,NULL,50005),(10040,3,NULL,'Shipped','Credit Card',NULL,NULL,50005),(10041,51,NULL,'Cancelled',NULL,NULL,NULL,NULL),(10042,26,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10043,17,NULL,'Shipped','Net Banking',NULL,NULL,50002),(10044,39,NULL,'In process','Net Banking',NULL,NULL,NULL),(10045,34,NULL,'In process','Credit Card',NULL,NULL,NULL),(10046,3,NULL,'Shipped','Net Banking',NULL,NULL,50002),(10047,24,NULL,'Shipped','Net Banking',NULL,NULL,50005),(10048,33,NULL,'Shipped','Cash',NULL,NULL,50002),(10049,33,NULL,'In process','Credit Card',NULL,NULL,NULL),(10050,1,NULL,'In process','Net Banking',NULL,NULL,NULL),(10051,43,NULL,'Shipped','Credit Card',NULL,NULL,50006),(10052,17,NULL,'In process',NULL,NULL,NULL,NULL),(10053,40,NULL,'Shipped','Credit Card',NULL,NULL,50005),(10054,19,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10055,25,NULL,'Shipped','Credit Card',NULL,NULL,50006),(10056,11,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10057,11,NULL,'Shipped','Cash',NULL,NULL,50005),(10058,28,NULL,'In process',NULL,NULL,NULL,NULL),(10059,30,NULL,'Shipped','Net Banking',NULL,NULL,50001),(10060,50,NULL,'Shipped','Credit Card',NULL,NULL,50005),(10061,37,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10062,34,NULL,'Cancelled',NULL,NULL,NULL,NULL),(10063,18,NULL,'Shipped','Credit Card',NULL,NULL,50001),(10064,35,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10065,17,NULL,'In process','Net Banking',NULL,NULL,NULL),(10066,41,NULL,'Cancelled',NULL,NULL,NULL,NULL),(10067,6,NULL,'In process','Credit Card',NULL,NULL,NULL),(10068,51,NULL,'Shipped','Credit Card',NULL,NULL,50004),(10069,23,NULL,'Shipped','Net Banking',NULL,NULL,50002),(10070,10,NULL,'Shipped','Net Banking',NULL,NULL,50001);

CREATE TABLE `product` (
  `PRODUCT_ID` int DEFAULT NULL,
  `PRODUCT_DESC` varchar(60) DEFAULT NULL,
  `PRODUCT_CLASS_CODE` int DEFAULT NULL,
  `PRODUCT_PRICE` decimal(12,2) DEFAULT NULL,
  `PRODUCT_QUANTITY_AVAIL` int DEFAULT NULL,
  `LEN` int DEFAULT NULL,
  `WIDTH` int DEFAULT NULL,
  `HEIGHT` int DEFAULT NULL,
  `WEIGHT` decimal(10,4) DEFAULT NULL,
  UNIQUE KEY `PK_PROD` (`PRODUCT_ID`)
);

INSERT INTO `product` VALUES (99999,'Samsung Galaxy Tab 2 P3100',3000,19300.00,50,122,194,10,0.3450),(99998,'Nikon Coolpix L810 Bridge',3000,14987.00,50,111,76,83,0.4300),(99997,'Sony Xperia U (Black White)',3000,16499.00,50,54,112,12,0.1100),(99994,'HP Deskjet 2050 All-in-One - J510a Printer',3001,3749.00,100,249,427,406,3.6000),(99995,'LG MS-2049UW Solo Microwave',3001,4800.00,100,455,252,320,5.6000),(99996,'Nokia Asha 200 (Graphite)',3001,4070.00,100,61,115,14,0.1050),(99991,'Dell Targus Synergy 2.0 Backpack',3002,999.00,250,450,250,50,0.5000),(99992,'Tom Clancy\'s Ghost Recon: Future Soldier (PC Game)',3002,999.00,250,150,200,10,0.1000),(99993,'Nokia 1280 (Black)',3002,999.00,250,45,107,15,0.0820),(201,'Sky LED 102 CM TV',2050,35000.00,30,905,750,700,15.0000),(202,'Sams 192 L4 Single-door Refrigerator',2050,28000.00,15,1802,750,750,25.0000),(203,'Jocky Speaker Music System HT32',2050,8900.00,19,908,300,300,5.0000),(204,'Cricket Set for Boys',2051,4500.00,10,890,300,200,18.0000),(205,'Infant Sleepwear Blue',2052,250.00,50,596,300,100,0.2500),(206,'Barbie Fab Gown Doll',2051,1000.00,20,305,150,75,0.1500),(207,'Remote Control Car',2051,2900.00,29,200,150,50,0.2250),(208,'Doll House',2051,3000.00,12,600,455,375,0.9000),(209,'Blue Jeans 34',2052,800.00,100,450,310,52,1.1000),(210,'Blossoms Lehenga Choli set',2052,3000.00,100,600,315,54,0.2500),(211,'OnePlus 6 Smart Phone',2055,32500.00,25,100,65,15,0.5500),(212,'Samsung Galaxy On6',2055,14000.00,20,120,70,18,0.6500),(213,'Alchemist',2054,150.00,50,200,100,20,0.2350),(214,'Harry Potter',2054,250.00,50,210,100,50,0.3450),(215,'Logtech M244 Optical Mouse',2053,450.00,10,125,85,45,0.1050),(216,'External Hard Disk 500 GB',2053,3500.00,10,275,285,85,0.5250),(217,'Titan Karishma Watch',2057,3497.00,35,220,55,24,0.1030),(218,'Shell Fingertip Ball Pen',2056,25.00,150,170,12,170,0.0500),(219,'Ruf-n-Tuf Black PU Leather Belt',2052,350.00,50,700,45,4,0.1550),(220,'Hello Kitti Lunch Bag',2059,199.00,15,455,300,225,0.5000),(221,'Cybershot DWC-W325 Camera',2050,5300.00,5,100,55,40,0.0500),(222,'KitchAsst Siphon Coffee Maker 500 ml',2060,1790.00,10,150,100,200,1.2000),(223,'Sams 21L Microwave Oven',2060,6880.00,5,500,400,300,8.0000),(224,'Phils HL 7430 Mixer Grinder 750W',2060,2265.00,3,375,400,355,3.0000),(225,'Solmo Non-stick Sandwich Maker 750 W',2060,1625.00,10,150,175,70,0.7500),(226,'Solmo Hand Blender Fibre',2060,1415.00,12,220,100,220,0.5600),(227,'Phils Wah Collection Juicer JM12',2060,2029.00,2,400,450,425,4.0000),(228,'Adidas Analog Watch',2057,2295.00,10,225,60,28,0.1150),(229,'Disney Analog Watch',2057,1600.00,10,225,60,28,0.1150),(230,'Esprit Analog Watch',2057,3495.00,5,225,60,28,0.1150),(231,'HP ODC Laptop Bag 15.5',2059,3390.00,10,550,400,210,0.2550),(232,'Women Hand Bag',2059,1600.00,15,250,220,170,0.1750),(233,'HP ODC School Bag 2.5\'',2059,799.00,35,600,450,275,0.3550),(234,'FLUFF Tote Travel Bag 35LTR',2059,3290.00,8,900,800,600,4.0000),(236,'Solo Exam SB-01 Writing Pad',2056,350.00,30,400,300,5,0.5500),(238,'Kasyo DJ-2100 Desktop Calculator',2056,338.00,10,150,120,120,0.5500),(239,'TRANS 2D A4 Size Box File',2056,120.00,6,350,300,100,0.3150),(240,'4M Post It Pad 3.5',2056,35.00,8,80,80,150,0.1200),(242,'GreenWud CT-NO-PR Coffee Table',2058,3500.00,6,1250,550,700,50.0000),(243,'Supreme Fusion Cupboard 02TB',2058,3000.00,3,1200,350,900,60.0000),(244,'Foldable Premium Chair',2058,4000.00,6,75,70,90,20.0000),(245,'GreenWud Nova Pedestal Unit',2058,2500.00,5,400,400,600,25.0000),(235,'Cindy HMPOC Pencil Box (Multicolor)',2056,80.00,10,250,50,15,0.4500),(237,'Zamark Color Pencil Art Set',2056,100.00,10,120,90,20,0.3500),(241,'PK Copier A4 75 GSM White Paper Ream',2056,285.00,2,297,210,NULL,NULL),(246,'Exam Warriors',2054,100.00,50,200,160,15,0.1000),(247,'Small Is Beautiful',2054,140.00,40,180,100,15,0.1000),(248,'To Kill a Mocking Bird',2054,210.00,35,190,150,20,0.1500),(249,'All-in-one Board Game',2051,450.00,20,750,320,90,0.5000),(250,'Huwi Wi-Fi Receiver 500Mbps',2053,287.00,30,100,95,30,0.1000),(99990,'Quanta 4 Port USB Hub',3000,500.00,50,180,125,30,0.0500),(7789,NULL,NULL,-4048.00,NULL,NULL,NULL,NULL,NULL),(8859,NULL,NULL,-4500.00,NULL,NULL,NULL,NULL,NULL);




