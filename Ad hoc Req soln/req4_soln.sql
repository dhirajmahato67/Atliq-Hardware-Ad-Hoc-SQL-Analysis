SELECT p.segment, 

count(case when fiscal_year=2020 then 1 end) as product_count_2020,
count(case when fiscal_year=2021 then 1 end) as product_count_2021,
count(case when fiscal_year=2021 then 1 end)-count(case when fiscal_year=2020 then 1 end) as difference

FROM gdb023.dim_product p
join fact_sales_monthly s
on p.product_code=s.product_code
group by p.segment
order by count(p.product) desc