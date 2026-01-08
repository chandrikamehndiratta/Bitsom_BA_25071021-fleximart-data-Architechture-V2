# Database Schema Documentation – FlexiMart

## 1. Entity–Relationship Description

### ENTITY: customers
**Purpose:**  
Stores master information about customers registered on the FlexiMart platform.

**Attributes:**
- **customer_id**: Unique identifier for each customer (Primary Key)
- **first_name**: Customer’s first name
- **last_name**: Customer’s last name
- **email**: Customer’s email address (unique, mandatory)
- **phone**: Customer’s contact number in standardized format
- **city**: City where the customer resides
- **registration_date**: Date on which the customer registered

**Relationships:**
- One customer can place **many orders** (1:M relationship with orders table)

---

### ENTITY: products
**Purpose:**  
Stores product catalog information available for sale on FlexiMart.

**Attributes:**
- **product_id**: Unique identifier for each product (Primary Key)
- **product_name**: Name of the product
- **category**: Product category (e.g., Electronics, Fashion)
- **price**: Selling price of the product
- **stock_quantity**: Available inventory count

**Relationships:**
- One product can appear in **many order items** (1:M relationship with order_items table)

---

### ENTITY: orders
**Purpose:**  
Stores high-level order transaction details.

**Attributes:**
- **order_id**: Unique identifier for each order (Primary Key)
- **customer_id**: Identifier of the customer who placed the order (Foreign Key)
- **order_date**: Date on which the order was placed
- **total_amount**: Total monetary value of the order
- **status**: Order status (Pending, Completed, Cancelled)

**Relationships:**
- Each order belongs to **one customer**
- Each order can have **many order items** (1:M relationship with order_items table)

---

### ENTITY: order_items
**Purpose:**  
Stores line-level details of products within each order.

**Attributes:**
- **order_item_id**: Unique identifier for each order line (Primary Key)
- **order_id**: Reference to the order (Foreign Key)
- **product_id**: Reference to the product (Foreign Key)
- **quantity**: Number of units ordered
- **unit_price**: Price per unit at time of purchase
- **subtotal**: Calculated as quantity × unit_price

**Relationships:**
- Many order items belong to **one order**
- Many order items reference **one product**

---

## 2. Normalization Explanation (Third Normal Form)

The FlexiMart database schema is designed in **Third Normal Form (3NF)** to ensure data integrity, reduce redundancy, and prevent data anomalies.

Each table satisfies **First Normal Form (1NF)** by containing atomic values and unique primary keys. There are no repeating groups or multi-valued attributes. **Second Normal Form (2NF)** is achieved because all non-key attributes are fully dependent on the entire primary key. For example, in the `order_items` table, attributes such as quantity and unit_price depend entirely on order_item_id.

The design also satisfies **Third Normal Form (3NF)** as there are no transitive dependencies. Customer attributes such as city and phone depend only on customer_id, and product attributes such as price and category depend only on product_id. These attributes are not duplicated across tables.

**Functional Dependencies:**
- customer_id → first_name, last_name, email, phone, city, registration_date
- product_id → product_name, category, price, stock_quantity
- order_id → customer_id, order_date, total_amount, status
- order_item_id → order_id, product_id, quantity, unit_price, subtotal

This structure avoids **update anomalies** by ensuring changes occur in a single table, **insert anomalies** by allowing independent insertion of customers and products, and **delete anomalies** by preserving master data even when transactional records are removed.

---

## 3. Sample Data Representation

### customers

| customer_id | first_name | last_name | email            | phone          | city    | registration_date |
|------------|------------|-----------|------------------|----------------|---------|-------------------|
| 1          | Rahul      | Sharma    | rahul@gmail.com  | +91-9876543210 | Delhi   | 2024-01-05        |
| 2          | Ananya     | Iyer      | ananya@gmail.com | +91-9123456789 | Mumbai | 2024-01-10        |

---

### products

| product_id | product_name   | category    | price  | stock_quantity |
|-----------|----------------|-------------|--------|----------------|
| 1         | Laptop Pro     | Electronics | 75000  | 20             |
| 2         | Wireless Mouse | Electronics | 1200   | 150            |

---

### orders

| order_id | customer_id | order_date | total_amount | status    |
|---------|-------------|------------|--------------|-----------|
| 101     | 1           | 2024-02-01 | 76200        | Completed |
| 102     | 2           | 2024-02-05 | 1200         | Pending   |

---

### order_items

| order_item_id | order_id | product_id | quantity | unit_price | subtotal |
|--------------|----------|------------|----------|------------|----------|
| 1            | 101      | 1          | 1        | 75000      | 75000    |
| 2            | 101      | 2          | 1        | 1200       | 1200     |
