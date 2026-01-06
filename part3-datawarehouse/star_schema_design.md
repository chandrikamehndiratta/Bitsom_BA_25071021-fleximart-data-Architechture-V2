# FlexiMart Data Warehouse – Star Schema Design
Task 3.1 – Star Schema Documentation

---

## 1. Schema Overview

The FlexiMart data warehouse uses a star schema to support analytical reporting on sales performance.

### Fact Table: fact_sales
- **Grain:** One row per product per order line item
- **Business Process:** Sales transactions

**Measures:**
- quantity_sold
- unit_price
- discount_amount
- total_amount

**Foreign Keys:**
- date_key → dim_date
- product_key → dim_product
- customer_key → dim_customer

---

### Dimension Table: dim_date
Stores calendar attributes for time-based analysis.

**Attributes:**
- date_key (PK)
- full_date
- day_of_week
- day_of_month
- month
- month_name
- quarter
- year
- is_weekend

---

### Dimension Table: dim_product
Stores product-related attributes.

**Attributes:**
- product_key (PK)
- product_id
- product_name
- category
- subcategory
- unit_price

---

### Dimension Table: dim_customer
Stores customer descriptive information.

**Attributes:**
- customer_key (PK)
- customer_id
- customer_name
- city
- state
- customer_segment

---

## 2. Design Decisions (150 words)

The chosen grain of one row per product per order line item allows detailed analysis of sales performance at the lowest level. This enables flexible aggregation such as daily sales, product-level revenue, and customer purchase behavior.

Surrogate keys are used instead of natural keys to ensure consistency and stability even if source system identifiers change. They also improve join performance in analytical queries.

The star schema supports drill-down and roll-up operations by separating descriptive attributes into dimension tables. Analysts can easily drill down from yearly to monthly sales or roll up product-level sales to category-level summaries. This design optimizes query performance and simplifies analytical reporting.

---

## 3. Sample Data Flow

**Source Transaction:**
Order #101, Customer "John Doe", Product "Laptop", Qty: 2, Price: 50000

**Data Warehouse Representation:**

**fact_sales**
- date_key: 20240115
- product_key: 5
- customer_key: 12
- quantity_sold: 2
- unit_price: 50000
- total_amount: 100000

**dim_date**
- date_key: 20240115
- full_date: 2024-01-15
- month: 1
- quarter: Q1

**dim_product**
- product_key: 5
- product_name: Laptop
- category: Electronics

**dim_customer**
- customer_key: 12
- customer_name: John Doe
- city: Mumbai
