MERGE INTO sales_data AS target
USING (
  SELECT
    $1:id::STRING AS sale_id,
    $1:amount::FLOAT AS amount,
    $1:timestamp::TIMESTAMP_NTZ AS sale_time
  FROM @my_ext_stage FILE_FORMAT=(TYPE=JSON)
) AS source
ON target.sale_id = source.sale_id
WHEN MATCHED THEN UPDATE SET target.amount = source.amount
WHEN NOT MATCHED THEN INSERT (sale_id, amount, sale_time) VALUES (source.sale_id, source.amount, source.sale_time);