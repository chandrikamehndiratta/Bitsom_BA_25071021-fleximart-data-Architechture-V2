
---

# 📘 `part2-nosql/README.md`

```md
# Part 2: NoSQL Database Analysis (MongoDB)

## Overview
This part evaluates the suitability of MongoDB for managing FlexiMart’s diverse and evolving product catalog. It includes a theoretical comparison of relational databases vs NoSQL and hands-on MongoDB operations using document-based data.

## Objectives
- Analyze limitations of relational databases for flexible product data
- Justify the use of MongoDB for a dynamic product catalog
- Implement common MongoDB operations and aggregations

## Files in This Folder
- `nosql_analysis.md`  
  Theory report discussing:
  - Limitations of RDBMS
  - Benefits of MongoDB
  - Trade-offs of using NoSQL
- `products_catalog.json`  
  Sample product catalog with nested attributes and embedded reviews.
- `mongodb_operations.js`  
  MongoDB script implementing:
  - Data load
  - Basic queries
  - Aggregations
  - Update operations

## MongoDB Operations Covered
- Filtering products by category and price
- Calculating average ratings from embedded reviews
- Updating documents with new reviews
- Aggregating product statistics by category

## Technologies Used
- MongoDB 6.0


## How to Run
```bash
mongosh < mongodb_operations.js
