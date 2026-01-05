# NoSQL Analysis for FlexiMart Product Catalog
Task 2.1 – NoSQL Justification Report

---

## Section A: Limitations of RDBMS 

Relational databases are well suited for structured and predictable data but face limitations when handling highly diverse product attributes. In an e-commerce system like FlexiMart, different product categories require different attributes. For example, electronics products require specifications such as RAM, processor, and storage, while fashion products require size, color, and material. Representing this diversity in a relational database requires multiple tables or frequent schema changes, increasing complexity.

Additionally, adding new product types often requires altering table schemas, which can cause downtime and impact existing applications. Storing nested data such as customer reviews also becomes inefficient in relational systems, requiring separate tables and complex joins. As the volume and variety of product data grow, maintaining performance and flexibility in an RDBMS becomes challenging.

---

## Section B: Benefits of MongoDB 

MongoDB addresses these limitations through its flexible, document-based schema. Products can be stored as JSON-like documents where each product includes only the attributes relevant to its category. This eliminates the need for schema changes when new product types are introduced.

MongoDB supports embedded documents, allowing customer reviews to be stored directly within product documents. This improves read performance and simplifies data access. Horizontal scalability through sharding enables MongoDB to handle large volumes of product data efficiently. Its flexible schema design makes MongoDB well suited for evolving product catalogs where structure may change frequently.

---

## Section C: Trade-offs of Using MongoDB (100 words)

While MongoDB provides flexibility, it lacks the strong transactional guarantees of relational databases. Complex multi-document transactions are more difficult to manage compared to MySQL. Additionally, MongoDB does not enforce strict schema validation by default, which may lead to inconsistent data if not carefully managed. For highly structured financial or transactional data, relational databases remain a better choice.
