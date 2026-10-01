# SECTION B -TIME ANALYSIS 

# Revenue by month
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

#Revenue by year
SELECT
    YEAR(order_date) AS year,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce
GROUP BY YEAR(order_date)
ORDER BY year;

#Orders by month
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(DISTINCT order_id) AS orders
FROM ecommerce
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

