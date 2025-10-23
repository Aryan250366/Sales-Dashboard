-- Sample SQL queries for Sales Dashboard (assumes table name: sales)
-- 1) Total sales by region
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 2) Top 10 customers by revenue
SELECT CustomerName, SUM(Sales) AS Revenue
FROM sales
GROUP BY CustomerName
ORDER BY Revenue DESC
LIMIT 10;

-- 3) Monthly sales trend
SELECT YEAR(OrderDate) AS Yr, MONTH(OrderDate) AS Mon, SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY Yr, Mon
ORDER BY Yr, Mon;