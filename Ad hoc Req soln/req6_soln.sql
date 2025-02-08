SELECT 
    c.customer_code,
    c.customer,
    AVG(dt.pre_invoice_discount_pct) AS average_discount_percentage
FROM
    gdb023.dim_customer c
        JOIN
    fact_pre_invoice_deductions dt ON dt.customer_code = c.customer_code
WHERE
    fiscal_year = 2021 AND market = 'India'
GROUP BY c.customer_code , c.customer
order by average_discount_percentage desc
limit 5

