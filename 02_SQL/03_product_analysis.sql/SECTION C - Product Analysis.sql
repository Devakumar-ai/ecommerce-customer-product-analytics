#SECTION C - PRODUCT ANALYSIS

#Revenue by category
SELECT
    category,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce
GROUP BY category
ORDER BY revenue DESC;

#Units sold by category
SELECT
    category,
    SUM(quantity) AS units_sold
FROM ecommerce
GROUP BY category
ORDER BY units_sold DESC;

#Average price by category
SELECT
    category,
    ROUND(AVG(quantity),2) AS avg_price
FROM ecommerce
GROUP BY category
ORDER BY avg_price DESC;

#Top 10 product by revenue
SELECT
    product_id,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

#BOTTOM 10 product by revenue
SELECT
    product_id,
    ROUND(SUM(total_amount), 2) AS revenue
FROM ecommerce
GROUP BY product_id
ORDER BY revenue 
LIMIT 10;


#Category profitability
SELECT
    category,
    ROUND(SUM(total_amount), 2) AS revenue,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM ecommerce
GROUP BY category
ORDER BY avg_profit_margin DESC;


      

 
