--create database pizza_sales;
--use pizza_sales;
--select * from pizza_sales;


--desc pizza_sales;
-- desc pizza_sales;
-- alter table pizza_sales
-- modify column order_date date;

-- set sql_safe_updates=0;
-- UPDATE pizza_sales
-- SET order_date = DATE_FORMAT(
--     STR_TO_DATE(order_date, '%d-%m-%Y'),
--     '%Y-%m-%d'
-- );



-- A. KPI’s
-- 1. Total Revenue:The sum of the total price of all pizza orders.
--   select sum(total_price) as Total_Revenue from pizza_sales ;

-- 2. Average Order Value : The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
-- SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM pizza_sales

-- 3. Total Pizzas Sold 
-- select sum(quantity) as Total_Pizzas_Sold  from pizza_sales;

-- 4. Total Orders
-- select count(distinct order_id) from pizza_sales ;

-- 5. Average Pizzas Per Order : On average, how many pizzas does a customer buy in one order?
-- select sum(quantity)/count(distinct order_id)  from pizza_sales ;



-- 6. Daily Trend for Total Orders : weekday pizza sales

-- select dayname(order_date) as dayn ,
--  count(distinct order_id) as total 
--  from  pizza_sales
-- group by dayn;

-- 7. Hourly Trend for Orders

-- select hour(order_time) as order_hours ,
--  count(distinct order_id)  as total_orders
--  from pizza_sales
--  group by hour(order_time)
--  order by order_hours ;


-- 8. % of Sales by Pizza Category 

--  select pizza_category , sum(total_price) as total_revenue ,
--  round(sum(total_price)*100 / (select sum(total_price) from pizza_sales),2) as persentage_Sales_by_Pizza_ategory 
--  from   pizza_sales 
--  group by pizza_category;

--  9. % of Sales by Pizza Size
--  select pizza_size , sum(total_price) as total_revenue ,
--  round(sum(total_price) * 100/(select sum(total_price) from pizza_sales),2) as pct
--  from pizza_sales
--  group by pizza_size;

-- 10. Total Pizzas Sold by Pizza Category
-- select pizza_category , sum(quantity) as Total_Quantity_Sold  from pizza_sales
-- group by pizza_category
-- order by  Total_Quantity_Sold ;

-- 11. Top 5 Best Sellers by Total Pizzas Sold
-- select pizza_name ,sum(quantity) as Total_Pizzas_Sold from pizza_sales
-- group by pizza_name
-- order by   Total_Pizzas_Sold desc  limit 5;

-- 12. Bottom 5 Best Sellers by Total Pizzas Sold
-- select pizza_name , sum(quantity) as Bottom_5_Best_Sellers  from pizza_sales
-- group by pizza_name  
-- order by Bottom_5_Best_Sellers  asc limit 5 ;


 
 





