#SECTION I - Advance Analysis

#Monthly Revenue with previous month 

WITH monthly_sales AS (

    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue

    FROM ecommerce

    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)

SELECT
    month,
    ROUND(revenue, 2) AS revenue,

    ROUND(
        LAG(revenue) OVER (
            ORDER BY month
        ),
        2
    ) AS previous_month_revenue

FROM monthly_sales

ORDER BY month;

#Revenue growth %
WITH monthly_sales AS (

    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(total_amount) AS revenue

    FROM ecommerce

    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
),

comparison AS (

    SELECT
        month,
        revenue,

        LAG(revenue) OVER (
            ORDER BY month
        ) AS previous_revenue

    FROM monthly_sales
)

SELECT
    month,

    ROUND(revenue, 2) AS revenue,

    ROUND(
        100.0 *
        (revenue - previous_revenue)
        / NULLIF(previous_revenue, 0),
        2
    ) AS growth_percentage

FROM comparison

ORDER BY month;
       
#Customer revenue ranking
WITH customer_sales AS (

    SELECT
        customer_id,
        SUM(total_amount) AS revenue

    FROM ecommerce

    GROUP BY customer_id
)

SELECT
    customer_id,
    ROUND(revenue, 2) AS revenue,

    RANK() OVER (
        ORDER BY revenue DESC
    ) AS customer_rank

FROM customer_sales

ORDER BY customer_rank;

#Category revenue contribution
WITH category_sales AS (

    SELECT
        category,
        SUM(total_amount) AS revenue

    FROM ecommerce

    GROUP BY category
)

SELECT
    category,

    ROUND(revenue, 2) AS revenue,

    ROUND(
        100.0 * revenue /
        SUM(revenue) OVER (),
        2
    ) AS revenue_percentage

FROM category_sales

ORDER BY revenue DESC;


#Top 3 products in each category


WITH product_sales AS (

    SELECT
        category,
        product_id,
        SUM(total_amount) AS revenue

    FROM ecommerce

    GROUP BY
        category,
        product_id
),

ranked_products AS (

    SELECT
        category,
        product_id,
        revenue,

        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY revenue DESC
        ) AS product_rank

    FROM product_sales
)

SELECT
    category,
    product_id,
    ROUND(revenue, 2) AS revenue,
    product_rank

FROM ranked_products

WHERE product_rank <= 3

ORDER BY
    category,
    product_rank;
       
    