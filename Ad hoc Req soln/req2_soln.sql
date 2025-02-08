SELECT 
    COUNT(CASE WHEN fiscal_year = 2020 THEN 1 END) AS num_2020,
    COUNT(CASE WHEN fiscal_year = 2021 THEN 1 END) AS num_2021,
    round((COUNT(CASE WHEN fiscal_year = 2021 THEN 1 END)-COUNT(CASE WHEN fiscal_year = 2020 THEN 1 END))*100/COUNT(CASE WHEN fiscal_year = 2021 THEN 1 END), 2) as pct_chng
    
FROM gdb023.fact_sales_monthly;
