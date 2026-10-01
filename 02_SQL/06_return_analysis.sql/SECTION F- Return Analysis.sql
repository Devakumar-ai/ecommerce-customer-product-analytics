#SECTION F- RETURN ANALYSIS

#OVER ALL RETRUN RATE

SELECT
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
FROM ecommerce;

#RETURN BY CATEGORY

SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(
        CASE
            WHEN returned = 'Yes' THEN 1
            ELSE 0
        END
    ) AS returned_orders,
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
GROUP BY category
ORDER BY return_rate DESC;   

#RETURN BY REGION 
SELECT 
    region ,
    COUNT(*) AS total_orders,
    SUM(
    CASE 
         WHEN returned ='Yes' THEN 1
         ELSE 0
    END
    ) AS returned_orders,
    ROUND(
          100.0*
          SUM(
              CASE 
                 WHEN returned = 'Yes' THEN 1
                 ELSE 0
              END
              ) / COUNT(*),
              2
		) AS return_rate
FROM ecommerce
GROUP BY region
ORDER BY return_rate DESC;

SELECT 
       payment_method,
      COUNT(*) AS total_orders,
      SUM(
          CASE
				WHEN returned = 'Yes' THEN 1
                ELSE 0
		  END 
          ) AS returned_order,
          ROUND(
                100.0*
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
ORDER BY return_rate ;







                  
      