CREATE OR REPLACE STAGE my_ext_stage
  URL='s3://your-bucket/sales_data/'
  STORAGE_INTEGRATION = my_s3_integration
  FILE_FORMAT = (TYPE = PARQUET);