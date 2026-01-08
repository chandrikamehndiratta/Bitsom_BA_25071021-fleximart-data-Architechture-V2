
---

# 📘 `part3-datawarehouse/README.md`

```md
# Part 3: Data Warehouse and Analytics

## Overview
This part focuses on building a data warehouse for FlexiMart to support historical analysis and decision-making. A star schema is designed and implemented, followed by OLAP-style analytical queries.

## Objectives
- Design a star schema for sales analytics
- Implement fact and dimension tables
- Load realistic analytical data
- Write OLAP queries for business insights

## Star Schema Components
- **Fact Table:** `fact_sales`
  - Grain: One row per product per order line item
- **Dimension Tables:**
  - `dim_date`
  - `dim_product`
  - `dim_customer`

## Files in This Folder
- `star_schema_design.md`  
  Documentation describing the star schema, design decisions, and sample data flow.
- `warehouse_schema.sql`  
  SQL script to create all fact and dimension tables.
- `warehouse_data.sql`  
  INSERT statements populating the warehouse with sample data.
- `analytics_queries.sql`  
  OLAP queries including drill-down analysis, product performance, and customer segmentation.

## Analytical Scenarios Covered
- Monthly sales drill-down (Year → Quarter → Month)
- Top products by revenue with contribution percentage
- Customer value segmentation (High / Medium / Low)

## Technologies Used
- MySQL
- SQL (OLAP, window functions, CTEs)

## How to Run
```bash
mysql -u root -p fleximart_dw < warehouse_schema.sql
mysql -u root -p fleximart_dw < warehouse_data.sql
mysql -u root -p fleximart_dw < analytics_queries.sql
