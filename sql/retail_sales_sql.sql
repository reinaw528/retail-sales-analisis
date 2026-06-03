CREATE DATABASE IF NOT EXISTS retail_sales
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci; 

SHOW DATABASES;

-- 查看当前所在的数据库
SELECT DATABASE();


-- Calculate total revenue generated
USE retail_sales;
SELECT
    ROUND(SUM(Sales),2) AS total_sales
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



