/* Youtube Link = https://youtu.be/S1do1EeA7ng?si=4PZnlqQ9e4pxnGr8 */

USE music_data;

SHOW Tables;

SELECT *FROM invoice;

-- Aggregate Functions

SELECT customer_id,billing_country,
SUM(customer_id) OVER( PARTITION BY billing_country ORDER BY customer_id ) AS "Total",
AVG(customer_id) OVER( PARTITION BY billing_country ORDER BY customer_id ) AS "Average",
COUNT(customer_id) OVER( PARTITION BY billing_country ORDER BY customer_id ) AS "Count",
MIN(customer_id) OVER( PARTITION BY billing_country ORDER BY customer_id ) AS "Min",
MAX(customer_id) OVER( PARTITION BY billing_country ORDER BY customer_id ) AS "Max"
FROM invoice;

SELECT customer_id, billing_country,
SUM(customer_id) OVER( ORDER BY customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Total",
AVG(customer_id) OVER( ORDER BY customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Average",
COUNT(customer_id) OVER( ORDER BY customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Count",
MIN(customer_id) OVER( ORDER BY customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Min",
MAX(customer_id) OVER( ORDER BY customer_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Max"
FROM invoice;

 -- RANKING FUNCTIONS
SELECT customer_id, 
ROW_NUMBER() OVER(ORDER BY customer_id) AS "ROW_NUMBER",
RANK() OVER(ORDER BY customer_id) AS "RANK",
DENSE_RANK() OVER(ORDER BY customer_id) AS "DENSE_RANK",
PERCENT_RANK() OVER(ORDER BY customer_id) AS "PERCENT_RANK"
FROM invoice;

-- Value/Analytic Functions
SELECT customer_id,
FIRST_VALUE(customer_id) OVER( ORDER BY customer_id) AS "FIRST_VALUE",
LAST_VALUE(customer_id) OVER( ORDER BY customer_id) AS "LAST_VALUE", 
LEAD(customer_id) OVER( ORDER BY customer_id) AS "LEAD",
LAG(customer_id) OVER( ORDER BY customer_id) AS "LAG"
FROM invoice;

SELECT customer_id,
LEAD(customer_id, 2) OVER( ORDER BY customer_id) AS "LEAD_by2",
LAG(customer_id, 2) OVER( ORDER BY customer_id) AS "LAG_by2"
FROM invoice;

USE sales;

SHOW TABLES;

SELECT *FROM transactions;

SELECT sales_qty,sales_amount,
SUM(sales_qty) OVER (PARTITION BY sales_amount ORDER BY sales_qty) AS 'Total',
AVG(sales_qty) OVER (PARTITION BY sales_amount ORDER BY sales_qty) AS 'Average',
COUNT(sales_qty) OVER (PARTITION BY sales_amount ORDER BY sales_qty) AS 'Count',
MIN(sales_qty) OVER (PARTITION BY sales_amount ORDER BY sales_qty) AS 'Min',
MAX(sales_qty) OVER (PARTITION BY sales_amount ORDER BY sales_qty) AS 'MAX'
FROM transactions;

SELECT sales_amount,
SUM(sales_amount) OVER( ORDER BY sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Total",
AVG(sales_amount) OVER( ORDER BY sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Average",
COUNT(sales_amount) OVER( ORDER BY sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Count",
MIN(sales_amount) OVER( ORDER BY sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Min",
MAX(sales_amount) OVER( ORDER BY sales_amount ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Max"
FROM transactions;

SELECT sales_qty, 
ROW_NUMBER() OVER(ORDER BY sales_qty) AS "ROW_NUMBER",
RANK() OVER(ORDER BY sales_qty) AS "RANK",
DENSE_RANK() OVER(ORDER BY sales_qty) AS "DENSE_RANK",
PERCENT_RANK() OVER(ORDER BY sales_qty) AS "PERCENT_RANK"
FROM transactions;

SELECT sales_qty,
FIRST_VALUE(sales_qty) OVER( ORDER BY sales_qty) AS "FIRST_VALUE",
LAST_VALUE(sales_qty) OVER( ORDER BY sales_qty) AS "LAST_VALUE", 
LEAD(sales_qty) OVER( ORDER BY sales_qty) AS "LEAD",
LAG(sales_qty) OVER( ORDER BY sales_qty) AS "LAG"
FROM transactions;
