#SECTION A — Business Performance

use ecommerce;


#TOTAL ORDERS
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM ecommerce;

#TOTAL CUSTOMERS 
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM ecommerce;

#TOTAL REVENUE
SELECT
    ROUND(SUM(total_amount), 2) AS total_revenue
FROM ecommerce;

#TOTAL QUANTITY
SELECT
    SUM(quantity) AS total_units_sold
FROM ecommerce;

#AVERAGE ORDER VALUE
SELECT
    ROUND(
        SUM(total_amount) /
        COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM ecommerce;

#TOTAL SHIPPING COST
SELECT
    ROUND(SUM(shipping_cost),2)  AS total_shipping_cost
FROM ecommerce;

#AVERAGE PROFIT MARGIN 
SELECT
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin
FROM ecommerce;

#TOTAL PROFIT MARGIN 
SELECT
    ROUND(SUM(profit_margin), 2) AS total_profit_margin
FROM ecommerce;





