# Modern Data Lake & Warehouse Architecture with Snowflake

## 🚀 Project Overview

This project demonstrates how to build a modern data lake and data warehouse solution using **Snowflake**, incorporating key data engineering patterns such as:
- External Tables over Parquet and JSON
- Streams and Tasks for CDC and automation
- Snowflake Stages for file ingestion
- Timezone-aware CTAS transformations
- Data warehouse modeling

## 📂 Folder Structure

```
snowflake_data_lake_warehouse_project/
├── raw_data/
│   ├── sales_data.parquet
│   └── customer_data.json
├── scripts/
│   ├── create_external_stage.sql
│   ├── create_external_table.sql
│   ├── parse_json_and_merge.sql
│   ├── create_streams_and_tasks.sql
│   ├── ctas_transformations.sql
│   └── warehouse_model.sql
├── diagrams/
│   └── architecture.png
├── README.md
└── .gitignore
```

## 🧠 Key Concepts Covered

- `Snowflake Stages`, `External Tables`, `Streams`, `Tasks`
- Ingestion and transformation of JSON & Parquet
- CDC handling with Streams
- CTAS transformations with timezones
- Dimensional modeling with final fact table

## 🛠 Technologies Used

- **Snowflake SQL**
- **Parquet / JSON files**
- **Amazon S3 (can be mocked locally)**
