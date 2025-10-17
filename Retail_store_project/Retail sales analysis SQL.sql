use retail_analytics;
SELECT 'sales' AS tbl, COUNT(*) AS `rows` FROM retail_sales_synthetic
UNION ALL
SELECT 'product_master', COUNT(*) FROM product_master
UNION ALL
SELECT 'store_info', COUNT(*) FROM store_info
UNION ALL
SELECT 'monthly_prices', COUNT(*) FROM monthly_retail_prices
UNION ALL
SELECT 'wpi', COUNT(*) FROM wpi_monthly
UNION ALL
SELECT 'inflation', COUNT(*) FROM retail_inflation_cpi
UNION ALL
SELECT 'mpce', COUNT(*) FROM state_mpce_monthly
UNION ALL
SELECT 'festival', COUNT(*) FROM festival_calendar_monthly;


-- Sales structure
DESCRIBE retail_sales_synthetic;
SELECT * FROM retail_sales_synthetic LIMIT 5;

-- Product master
DESCRIBE product_master;
SELECT * FROM product_master LIMIT 5;

-- Store info
DESCRIBE store_info;
SELECT * FROM store_info LIMIT 5;




SELECT MIN(date) AS min_date, MAX(date) AS max_date, COUNT(DISTINCT DATE_FORMAT(date, '%Y-%m')) AS months_covered
FROM retail_sales_synthetic;

SELECT 
  SUM(date IS NULL) AS date_nulls,
  SUM(store_id IS NULL) AS store_nulls,
  SUM(product_id IS NULL) AS product_nulls,
  SUM(quantity_sold IS NULL) AS qty_nulls,
  SUM(revenue IS NULL) AS revenue_nulls
FROM retail_sales_synthetic;




-- products in sales not in product_master
SELECT DISTINCT s.product_id
FROM retail_sales_synthetic s
LEFT JOIN product_master p ON s.product_id = p.product_id
WHERE p.product_id IS NULL
LIMIT 10;

-- stores in sales not in store_info
SELECT DISTINCT s.store_id
FROM retail_sales_synthetic s
LEFT JOIN store_info st ON s.store_id = st.store_id
WHERE st.store_id IS NULL
LIMIT 10;



SELECT COUNT(*) AS total_sales, COUNT(DISTINCT sale_id) AS distinct_sales, 
       (COUNT(*) - COUNT(DISTINCT sale_id)) AS duplicate_sale_ids
FROM retail_sales_synthetic;




SELECT p.category, SUM(s.quantity_sold) AS total_units, SUM(s.revenue) AS total_revenue
FROM retail_sales_synthetic s
JOIN product_master p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


select * from retail_sales_synthetic;
select * from product_master;
SELECT * FROM festival_calendar_monthly;
select* from retail_inflation_cpi;