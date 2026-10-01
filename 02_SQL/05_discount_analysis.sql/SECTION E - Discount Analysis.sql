#SECTION E - DISCOUNT ANALYSIS 

#AVG DISCOUNT BY CATEGORY 
SELECT
    category,
    ROUND(AVG(discount), 2) AS avg_discount
FROM ecommerce
GROUP BY category
ORDER BY avg_discount DESC;

#Revenue by discount band

SELECT
    CASE
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 10 THEN '1-10%'
        WHEN discount <= 20 THEN '11-20%'
        WHEN discount <= 30 THEN '21-30%'
        ELSE '30%+'
    END AS discount_band,

    ROUND(SUM(total_amount), 2) AS revenue

FROM ecommerce

GROUP BY discount_band

ORDER BY
    MIN(discount);
    
#PROFIT MARGIN BY DISCOUNT

SELECT
    CASE
        WHEN discount = 0 THEN '0%'
        WHEN discount <= 10 THEN '1-10%'
        WHEN discount <= 20 THEN '11-20%'
        WHEN discount <= 30 THEN '21-30%'
        ELSE '30%+'
    END AS discount_band,

    ROUND(AVG(profit_margin), 2) AS avg_margin

FROM ecommerce

GROUP BY discount_band

ORDER BY
    MIN(discount);
    