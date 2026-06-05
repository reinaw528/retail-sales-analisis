CREATE DATABASE IF NOT EXISTS retail_sales
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci; 

SHOW DATABASES;

-- Calculate total revenue generated
USE retail_sales;
SELECT
    ROUND(SUM(Sales),2) AS total_sales
FROM sales;

SELECT
    Year,
    ROUND(SUM(Sales),2) AS sales
FROM sales
GROUP BY Year
ORDER BY Year;

SELECT
    Year,
    Month,
    ROUND(SUM(Sales),2) AS sales
FROM sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT
    Month,
    ROUND(SUM(Sales),2) AS sales
FROM sales
GROUP BY Month
ORDER BY sales DESC;


-- Calculate total orders
SELECT
	COUNT(DISTINCT `Order ID`) AS total_orders
FROM sales;

-- Calculate total customers
SELECT
	COUNT(DISTINCT `Customer ID`) AS total_customers
FROM sales;


-- Identify the highest-performing regions.
SELECT
    Region,
    ROUND(SUM(Sales),2) AS sales
FROM sales
GROUP BY Region
ORDER BY sales DESC;


-- identify top 10 states
SELECT
  state,
  round(sum(sales),2) as sales
FROM sales
GROUP BY state
ORDER BY sales DESC
LIMIT 10;



-- identify top 10 products
SELECT
    Product_Name,
    ROUND(SUM(Sales),2) AS sales
FROM sales
GROUP BY Product_Name
ORDER BY sales DESC
LIMIT 10;


SELECT Category,round(sum(sales),2) as category_sales
FROM sales
GROUP BY Category
ORDER BY category_sales DESC


SELECT `Sub-Category`,round(sum(sales),2) as subcategory_sales
FROM sales
GROUP BY `Sub-Category`
ORDER BY subcategory_sales DESC
LIMIT 10;

SELECT `Customer ID`,  `Customer Name`, ROUND(SUM(Sales),2) as customer_sales
FROM Sales
GROUP BY `Customer ID`,`Customer Name`
ORDER BY customer_sales DESC
LIMIT 10;

SELECT Segment,COUNT(`Customer ID`) AS customer_num
FROM sales
GROUP BY Segment
ORDER BY customer_num



