create database pizza_sales;
use pizza_sales;
select * from pizza_sales;


-- A. KPI’s
-- 1. Total Revenue:The sum of the total price of all pizza orders.
--   select sum(total_price) as Total_Revenue from pizza_sales ;

-- 2. Average Order Value : The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
-- SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales

-- 3. Total Pizzas Sold 
-- select sum(quantity) as Total_Pizzas_Sold  from pizza_sales;


-- 4. Total Orders
select count(distinct order_id) from pizza_sales ;