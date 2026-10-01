#SECTION H — Payment Analysis

# Payment method performance
SELECT
    payment_method,
    COUNT(DISTINCT order_id) AS orders,
    ROUND(SUM(total_amount), 2) AS revenue,
    ROUND(AVG(total_amount), 2) AS avg_order_value
FROM ecommerce
GROUP BY payment_method
ORDER BY revenue DESC;

#PAYMENT METHOD RETURNS
SELECT
    payment_method,

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

GROUP BY payment_method

ORDER BY return_rate DESC;




