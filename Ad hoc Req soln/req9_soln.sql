SELECT 
    c.channel, round((sum(s.sold_quantity*g.gross_price)/1000000), 2) as gross_sales_mln,
    round((SUM(s.sold_quantity * g.gross_price) / 1000000) * 100.0 / 
        SUM(SUM(s.sold_quantity * g.gross_price) / 1000000) OVER(), 2) AS percentage_contribution
        
FROM
    gdb023.fact_sales_monthly s
        JOIN
    dim_customer c ON c.customer_code = s.customer_code
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
WHERE
    g.fiscal_year = 2021
    group by channel 
