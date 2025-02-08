(
SELECT p.product_code, 
       p.product, 
       m.manufacturing_cost
FROM gdb023.dim_product p
JOIN fact_manufacturing_cost m
    ON m.product_code = p.product_code
ORDER BY m.manufacturing_cost DESC
LIMIT 1
)

UNION ALL
(
SELECT p.product_code, 
       p.product, 
       m.manufacturing_cost
FROM gdb023.dim_product p
JOIN fact_manufacturing_cost m
    ON m.product_code = p.product_code
ORDER BY m.manufacturing_cost ASC
LIMIT 1
)
