CREATE OR REPLACE EXTERNAL TABLE ext_sales_data (
  sale_id STRING,
  sale_date DATE,
  amount FLOAT,
  geo_data VARIANT
)
WITH LOCATION = @my_ext_stage
AUTO_REFRESH = true;