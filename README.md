# FlexiMart Data Architecture Project

**Student Name:** Chandrika Mehndiratta
**Student ID:** BA_25071021 
**Email:** chandrikamehndiratta@gmail.com
**Date:** January 2025

## Project Overview The FlexiMart Data Architecture Project demonstrates the design and implementation of an end-to-end data architecture to support analytics and AI-driven use cases. The project integrates relational database modeling, ETL pipeline development, NoSQL data handling, and data warehouse design using both structured and semi-structured retail data.

The solution transforms raw transactional and product data into analytics-ready datasets suitable for business intelligence reporting and downstream AI applications.

[
## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## Setup Instructions

### Database Setup

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js

## Key Learnings

Built an end-to-end data architecture solution covering ETL pipelines, relational databases, NoSQL systems, and data warehousing.

Learned to handle real-world data quality issues such as missing values, duplicates, and inconsistent formats using Python and SQL.

Gained practical experience in database normalization, dimensional modeling, and OLAP-style analytical queries.

Understood the trade-offs between relational and NoSQL databases and their impact on analytics and scalability.

## Challenges Faced

Challenge: Raw CSV files contained missing values, duplicates, and inconsistent formats across multiple datasets.
Solution: Implemented robust data cleaning and standardization logic in the ETL pipeline using Python and pandas.

Challenge: Designing an analytics model that supports flexible reporting and drill-down analysis.
Solution: Applied dimensional modeling principles and implemented a star schema with surrogate keys to enable efficient OLAP queries.

Challenge: Managing diverse product attributes that do not fit well into a rigid relational schema.
Solution: Used MongoDB with flexible document structures and embedded fields to handle heterogeneous product data.
