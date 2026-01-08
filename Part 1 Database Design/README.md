# Part 1: Database Design and ETL Pipeline

## Overview
This part focuses on building a complete ETL (Extract, Transform, Load) pipeline for FlexiMart’s transactional data. Raw CSV files containing customers, products, and sales data are cleaned, transformed, and loaded into a relational database (MySQL/PostgreSQL). The cleaned data is then used to answer business-critical SQL queries.

## Objectives
- Ingest raw CSV files with data quality issues
- Clean and standardize data using Python
- Load structured data into a relational database
- Document the database schema and relationships
- Answer business questions using SQL queries

## Input Data
Located in the root `data/` directory:
- `customers_raw.csv` – customer data with missing emails, duplicate records, and inconsistent phone formats
- `products_raw.csv` – product data with missing prices and inconsistent category names
- `sales_raw.csv` – sales data with date inconsistencies and duplicate transactions

## Files in This Folder
- `etl_pipeline.py`  
  Python script that performs extraction, transformation, and loading of data into the database.
- `schema_documentation.md`  
  Detailed documentation of database entities, relationships, and normalization (3NF).
- `business_queries.sql`  
  SQL queries answering customer purchase history, product sales analysis, and monthly sales trends.
- `data_quality_report.txt`  
  Generated report summarizing records processed, duplicates removed, missing values handled, and records loaded.

## Technologies Used
- Python 3.x
- pandas
- MySQL


## How to Run
```bash
# Run ETL pipeline
python etl_pipeline.py

# Run business queries
mysql -u root -p fleximart < business_queries.sql
