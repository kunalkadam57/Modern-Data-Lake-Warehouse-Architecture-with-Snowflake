CREATE OR REPLACE STREAM sales_stream ON TABLE ext_sales_data;

CREATE OR REPLACE TASK process_sales_changes
  WAREHOUSE = my_wh
  SCHEDULE = '5 MINUTE'
AS
  INSERT INTO sales_changes_log
  SELECT * FROM sales_stream WHERE metadata$action = 'INSERT';