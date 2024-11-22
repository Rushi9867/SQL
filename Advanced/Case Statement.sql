/* Youtube Link : https://youtu.be/n_0kijUi7IA?si=YTLSzcjIrDjY-syX */

USE adv_sql;

SHOW TABLES;

SELECT *FROM payment_case;

SELECT customer_id, amount,
CASE
WHEN amount > 100 THEN 'Expensive product'
WHEN amount = 100 THEN 'Moderate product'
ELSE 'Inexpensive product' 
END AS ProductStatus
FROM payment_case;

SELECT customer_id,
CASE amount
WHEN 500 THEN 'Prime Customer'
WHEN 100 THEN 'Plus Customer'
ELSE 'Regular Customer'
END AS CustomerStatus
FROM payment_case;

USE carbon;

SHOW TABLES;

SELECT DISTINCT Initial_atomic_coordinate_u,Chiral_indice_n FROM carbon_nanotubes;

SELECT Chiral_indice_n,Initial_atomic_coordinate_u,
CASE 
WHEN Initial_atomic_coordinate_u <100000 THEN 'Very Low'
WHEN Initial_atomic_coordinate_u > 100000 AND Initial_atomic_coordinate_u < 300000 THEN 'Low' 
WHEN Initial_atomic_coordinate_u > 300000 AND Initial_atomic_coordinate_u < 500000 THEN 'Medium' 
WHEN Initial_atomic_coordinate_u > 500000 AND Initial_atomic_coordinate_u < 800000 THEN 'High'
ELSE 'Very High' END AS `Status` FROM carbon_nanotubes;

USE sales;

SHOW TABLES;
SELECT *FROM transactions;

SELECT DISTINCT sales_amount FROM transactions;

SELECT product_code,market_code,cost_price,sales_amount,
CASE sales_amount
WHEN 10597 THEN 'Prime Product'
WHEN 4079  THEN 'Plus Product'
WHEN 5236  THEN 'Moderate Product'
ELSE 'Regular Product' END AS Product_Status
FROM transactions;