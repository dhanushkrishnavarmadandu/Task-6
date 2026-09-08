create database sales_analysis;
use  sales_analysis;
select* from online_sales
limit 10;
describe online_sales;

select Date from online_sales
limit 10;

-- Monthly Revenue Analysis
SELECT 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM online_sales
GROUP BY 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY 
    year,
    month;
    
-- Monthly Order Volume Analysis  
 SELECT 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS month,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales
GROUP BY 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY 
    year,
    month;
    
-- Monthly Order Volume Analysis
SELECT 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales
GROUP BY 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY 
    year,
    month;
    
-- Combined Monthly Sales Trend Analysis   
SELECT 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM online_sales
GROUP BY 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY 
    year,
    month
LIMIT 6;

-- Top 5 Months by Revenue
SELECT 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM online_sales
GROUP BY 
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')),
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d'))
ORDER BY total_revenue DESC
LIMIT 5;

