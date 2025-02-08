WITH cte1 AS (
    SELECT 
        p.division,
        p.product_code,
        p.product,
        s.sold_quantity AS total_sold_quantity,
        ROW_NUMBER() OVER(PARTITION BY p.division ORDER BY s.sold_quantity DESC) AS rank_order
    FROM gdb023.fact_sales_monthly s
    JOIN dim_product p ON p.product_code = s.product_code
    WHERE s.fiscal_year = 2021
)
SELECT *
FROM cte1
WHERE rank_order <= 3
ORDER BY division;
