#SECTION G — Delivery Analysis
#Average delivery time by region
SELECT
    region,
    ROUND(AVG(delivery_time_days), 2) AS avg_delivery_days
FROM ecommerce
GROUP BY region
ORDER BY avg_delivery_days DESC;

#DELIVERY TIME VS RETURNS
SELECT
    delivery_time_days,

    COUNT(*) AS orders,

    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN returned = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS return_rate
FROM ecommerce
GROUP BY delivery_time_days
ORDER BY delivery_time_days;