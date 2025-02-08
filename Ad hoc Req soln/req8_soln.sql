SELECT YEAR(date) as Year, 
case
when month(date) in (9,10,11) then 'Q1' 
when month(date) in (12,1,2) then 'Q2' 
when month(date) in (3,4,5) then 'Q3' 
when month(date) in (6,7,8) then 'Q4' 
end as fiscal_quarter,
sum(sold_quantity) as total_quantity_sold

FROM gdb023.fact_sales_monthly
where YEAR(date)=2020
group by year(date), fiscal_quarter
order by fiscal_quarter asc