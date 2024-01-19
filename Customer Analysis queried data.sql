SELECT * FROM customer_data.`customer`;
use customer_data;
-- Unique order IDs: 
SELECT COUNT(DISTINCT order_id) FROM customer;
-- Unique items: 
SELECT COUNT(DISTINCT item_id) AS unique_items FROM customer;
-- Total quantity of items ordered: 
SELECT SUM(qty_ordered) AS total_quantity FROM customer;

-- Orders by status: 
SELECT status, COUNT(*) AS order_count FROM customer GROUP BY status;
-- Average discount amount for each status:
 SELECT status, AVG(discount_amount) AS avg_discount FROM customer GROUP BY status;
 
 -- Top-selling items by quantity
SELECT item_id, SUM(qty_ordered) AS total_quantity 
FROM customer 
GROUP BY item_id 
ORDER BY total_quantity DESC 
LIMIT 5;

-- Total revenue by item
SELECT item_id, SUM(value) AS total_revenue 
FROM customer 
GROUP BY item_id 
ORDER BY total_revenue DESC;

-- Time-based Analysis

-- Orders per month and year
SELECT year, month, COUNT(*) AS order_count 
FROM customer 
GROUP BY year, month;

-- Average order value per month
SELECT year, month, AVG(value) AS avg_order_value 
FROM customer 
GROUP BY year, month;

-- Year with the highest sales
SELECT year, SUM(value) AS total_sales 
FROM customer 
GROUP BY year 
ORDER BY total_sales DESC 
LIMIT 1;

-- Customer Analysis

-- Top 10 customers by total order value
SELECT cust_id, SUM(value) AS total_order_value 
FROM customer 
GROUP BY cust_id 
ORDER BY total_order_value DESC 
LIMIT 10;

-- Average age of customers
SELECT AVG(age) AS avg_age 
FROM customer;

-- Customers in each region
SELECT Region, COUNT(DISTINCT cust_id) AS customer_count 
FROM customer 
GROUP BY Region;

-- Distribution of payment methods
SELECT payment_method, COUNT(*) AS count 
FROM customer 
GROUP BY payment_method;

-- Geographical Analysis

-- Top 5 cities with the highest sales
SELECT City, SUM(value) AS total_sales 
FROM customer 
GROUP BY City 
ORDER BY total_sales DESC 
LIMIT 5;

-- Orders placed in each state
SELECT State, COUNT(*) AS order_count 
FROM customer 
GROUP BY State;

-- Discounts

-- Overall discount percentage
SELECT AVG(Discount_Percent) AS avg_discount_percent 
FROM customer;

-- Unique users
SELECT COUNT(DISTINCT cust_id) AS unique_users 
FROM customer;

-- Users with the highest and lowest order values

-- Users with the highest order values
SELECT cust_id, full_name, MAX(value) AS highest_order_value
FROM customer
GROUP BY cust_id, full_name
ORDER BY highest_order_value DESC
LIMIT 1;

-- Users with the lowest order values
SELECT cust_id, full_name, MIN(value) AS lowest_order_value
FROM customer
GROUP BY cust_id, full_name
ORDER BY lowest_order_value DESC
LIMIT 1;

-- Orders by payment method
SELECT payment_method, COUNT(*) AS order_count 
FROM customer 
GROUP BY payment_method;


