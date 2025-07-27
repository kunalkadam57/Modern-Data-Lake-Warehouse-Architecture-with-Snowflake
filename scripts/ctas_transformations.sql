CREATE OR REPLACE TABLE clean_sales_data AS
SELECT 
  sale_id,
  amount,
  CAST(sale_time AS TIMESTAMP_TZ) AS adjusted_time
FROM ext_sales_data
WHERE amount > 0;