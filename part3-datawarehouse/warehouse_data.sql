USE fleximart_dw;

-- DIM DATE (Sample)
INSERT INTO dim_date VALUES
(20240101,'2024-01-01','Monday',1,1,'January','Q1',2024,0),
(20240115,'2024-01-15','Monday',15,1,'January','Q1',2024,0),
(20240210,'2024-02-10','Saturday',10,2,'February','Q1',2024,1);

-- DIM PRODUCT
INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('P001','Laptop','Electronics','Computers',50000),
('P002','Earbuds','Electronics','Audio',3000),
('P003','Shoes','Fashion','Footwear',2000);

-- DIM CUSTOMER
INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('C001','Rahul Sharma','Mumbai','MH','Retail'),
('C002','Anita Verma','Delhi','DL','Retail'),
('C003','John Doe','Bangalore','KA','Corporate');

-- FACT SALES
INSERT INTO fact_sales
(date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount)
VALUES
(20240115,1,1,2,50000,0,100000),
(20240210,2,2,3,3000,0,9000),
(20240101,3,3,5,2000,0,10000);
