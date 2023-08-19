CREATE TABLE customer (
customer_id SERIAL PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(20) UNIQUE NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL
);
CREATE TABLE category (
category_id SERIAL PRIMARY KEY NOT NULL,
Name VARCHAR(50) NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL
);

CREATE TABLE product (
product_id SERIAL PRIMARY KEY NOT NULL,
Name VARCHAR(100) NOT NULL,
Description TEXT,
price DECIMAL(10,2) NOT NULL,
stock INT NOT NULL,
category_id INT NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE employee (
employee_id SERIAL PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
position VARCHAR(50) NOT NULL,
access_privileges VARCHAR(100) NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL
);

CREATE TABLE price_history (
product_id SERIAL NOT NULL,
price DECIMAL(10,2) NOT NULL,
effective_date DATE NOT NULL,
change_reason TEXT,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
PRIMARY KEY (product_id, effective_date),
CONSTRAINT fk_price_history_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE delivery_address (
address_id SERIAL PRIMARY KEY NOT NULL,
customer_id INT NOT NULL,
street VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
postal_code VARCHAR(20) NOT NULL,
country VARCHAR(50) NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
CONSTRAINT fk_delivery_address_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE orders (
order_id SERIAL PRIMARY KEY NOT NULL,
order_date DATE NOT NULL,
customer_id INT NOT NULL,
employee_id INT NOT NULL,
total_amount DECIMAL(10,2) NOT NULL,
delivery_address_id INT NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
CONSTRAINT fk_orders_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
CONSTRAINT fk_orders_delivery_address FOREIGN KEY (delivery_address_id) REFERENCES delivery_address(address_id)
);

CREATE TABLE order_details (
order_detail_id SERIAL PRIMARY KEY NOT NULL,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
CONSTRAINT fk_order_details_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
CONSTRAINT fk_order_details_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE payment (
payment_id SERIAL PRIMARY KEY NOT NULL,
order_id INT NOT NULL,
customer_id INT NOT NULL,
amount DECIMAL(10,2) NOT NULL,
payment_date DATE NOT NULL,
payment_method VARCHAR(50) NOT NULL,
created_by VARCHAR(50) NOT NULL,
updated_by VARCHAR(50) NOT NULL,
created_at TIMESTAMP NOT NULL,
updated_at TIMESTAMP NOT NULL,
CONSTRAINT fk_payment_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
CONSTRAINT fk_payment_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
