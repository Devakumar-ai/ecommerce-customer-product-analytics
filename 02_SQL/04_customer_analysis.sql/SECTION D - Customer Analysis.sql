#SECTION D - CUSTOMER ANALYSIS

#Top 10 customers by revenue
SELECT
    customer_id,
    ROUND(SUM(total_amount), 2) AS customer_revenue
FROM ecommerce
GROUP BY customer_id
ORDER BY customer_revenue DESC
LIMIT 10;

#Orders per customer
SELECT 
     customer_id,
     count(DISTINCT order_id) AS order_count
FROM ecommerce
GROUP BY customer_id
ORDER BY order_count DESC;

#Repeat customers
SELECT 
      COUNT(*) AS repeat_customer
FROM (
	 SELECT 
     customer_id
     from ecommerce
     GROUP BY customer_id
     HAVING COUNT(DISTINCT order_id) >1
) AS customers ;

#Repeat customer rate
SELECT
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN order_count > 1 THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS repeat_customer_rate
FROM (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS order_count
    FROM ecommerce
    GROUP BY customer_id
) AS customer_orders;
