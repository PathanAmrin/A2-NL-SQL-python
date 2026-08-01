CREATE TABLE orders (
    row_id INTEGER PRIMARY KEY,
    order_id VARCHAR(50) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE NOT NULL,
    ship_mode VARCHAR(50),
    
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),

    country_region VARCHAR(100),
    city VARCHAR(100),
    state_province VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),

    product_id VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name TEXT,

    sales NUMERIC(12,4),
    quantity INTEGER,
    discount NUMERIC(5,4),
    profit NUMERIC(12,4),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_orders_order_id 
ON orders(order_id);

CREATE INDEX idx_orders_customer_id 
ON orders(customer_id);

CREATE INDEX idx_orders_product_id 
ON orders(product_id);

CREATE INDEX idx_orders_order_date 
ON orders(order_date);