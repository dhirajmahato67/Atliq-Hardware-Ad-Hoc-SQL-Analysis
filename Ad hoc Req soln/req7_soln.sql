SELECT 
    s.date,
    MONTH(s.date) AS Month_,
    SUM(ROUND(g.gross_price * s.sold_quantity, 2)) AS Gross_sales_Amount
FROM
    gdb023.fact_sales_monthly s
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
GROUP BY s.date , MONTH(s.date)
