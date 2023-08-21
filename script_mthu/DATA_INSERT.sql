INSERT INTO customer(
	first_name, last_name, email, phone, created_by, updated_by, created_at, updated_at)
	VALUES ('John', 'Doe', 'johndoe@example.com', '1234567890', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Jane', 'Smith', 'janesmith@example.com', '9876543210', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Alice', 'Johnson', 'alicejohnson@example.com', '1111111111', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Bob', 'Williams', 'bobwilliams@example.com', '2222222222', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Emily', 'Brown', 'emilybrown@example.com', '3333333333', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Michael', 'Jones', 'michaeljones@example.com', '4444444444', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Olivia', 'Davis', 'oliviadavis@example.com', '5555555555', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('William', 'Miller', 'williammiller@example.com', '6666666666', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Sophia', 'Wilson', 'sophiawilson@example.com', '7777777777', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('James', 'Anderson', 'jamesanderson@example.com', '8888888888', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Emma', 'Taylor', 'emmataylor@example.com', '9999999999', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Daniel', 'Thompson', 'danielthompson@example.com', '1231231234', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO category(
	name, created_by, updated_by, created_at, updated_at)
	VALUES ('Fruits', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Beverages', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Disposable', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Instant Noodle', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Milk Products', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Frozen Food 2', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Food 3', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Organic', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Others', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Sweet', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);



INSERT INTO product(
	name, description, price, stock, category_id, created_by, updated_by, created_at, updated_at)
	VALUES ('Fresh Milk', 'Premium quality fresh milk', 3.99, 50, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Organic Eggs', 'Farm-fresh organic eggs', 2.99, 30, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Instant Noodles - Chicken Flavor', 'Quick and delicious chicken-flavored noodles', 0.99, 100, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Organic Yogurt - Strawberry', 'Delicious strawberry-flavored organic yogurt', 1.99, 20, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Whole Grain Cereal', 'Healthy whole grain cereal', 4.99, 15, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Fresh Eggs', 'Farm-fresh eggs', 1.99, 40, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Noodles - Beef Flavor', 'Tasty beef-flavored noodles', 0.99, 80, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Low-Fat Milk', 'Low-fat and nutritious milk', 2.99, 25, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Organic Eggs - Brown', 'Organic brown eggs from free-range chickens', 3.49, 35, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Ramen Noodles - Spicy Flavor', 'Spicy and flavorful ramen noodles', 1.49, 60, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Almond Milk', 'Creamy almond milk', 3.99, 30, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Free-Range Eggs', 'Eggs from chickens raised in free-range conditions', 2.49, 45, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Instant Noodles - Vegetable Flavor', 'Tasty vegetable-flavored instant noodles', 0.99, 70, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Greek Yogurt - Blueberry', 'Creamy Greek yogurt with delicious blueberry flavor', 2.49, 20, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Spaghetti', 'Classic spaghetti pasta', 1.99, 50, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Soy Milk', 'Nutritious soy milk', 2.99, 35, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Free-Range Organic Eggs', 'Organic eggs from free-range chickens', 4.49, 40, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Cup Noodles - Shrimp Flavor', 'Tasty cup noodles with shrimp flavor', 1.29, 90, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Oat Milk', 'Creamy and dairy-free oat milk', 3.49, 25, 8, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Rice Noodles', 'Thin and delicate rice noodles', 1.99, 60, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);



INSERT INTO employee (first_name, last_name, position, access_privileges, created_by, updated_by, created_at, updated_at)
VALUES
('John', 'Smith', 'Manager', 'Admin', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Jane', 'Doe', 'Sales Associate', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Michael', 'Johnson', 'Cashier', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Emily', 'Davis', 'Stock Clerk', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('David', 'Anderson', 'Customer Service Representative', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Sarah', 'Wilson', 'Visual Merchandiser', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Matthew', 'Taylor', 'Inventory Manager', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Olivia', 'Thomas', 'Assistant Manager', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Daniel', 'Roberts', 'Sales Associate', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Sophia', 'Brown', 'Cashier', 'Limited', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);




INSERT INTO delivery_address (customer_id, street, city, state, postal_code, country, created_by, updated_by, created_at, updated_at)
VALUES
-- Customer 1
(1, '123 Main St', 'Cityville', 'Stateville', '12345', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(1, '456 Elm St', 'Townsville', 'Stateville', '67890', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 2
(2, '789 Oak St', 'Villagetown', 'Stateville', '34567', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, '987 Pine St', 'Hamletville', 'Stateville', '89012', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 3
(3, '321 Cedar St', 'Cityville', 'Stateville', '54321', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, '654 Maple St', 'Townsville', 'Stateville', '87654', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 4
(4, '987 Birch St', 'Villagetown', 'Stateville', '76543', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, '210 Walnut St', 'Hamletville', 'Stateville', '21098', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 5
(5, '543 Willow St', 'Cityville', 'Stateville', '98765', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, '876 Oak St', 'Townsville', 'Stateville', '43210', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 6
(6, '109 Elm St', 'Villagetown', 'Stateville', '56789', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(6, '432 Pine St', 'Hamletville', 'Stateville', '90123', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 7
(7, '765 Cedar St', 'Cityville', 'Stateville', '34567', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(7, '098 Maple St', 'Townsville', 'Stateville', '89012', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 8
(8, '210 Birch St', 'Villagetown', 'Stateville', '23456', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(8, '543 Walnut St', 'Hamletville', 'Stateville', '78901', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Customer 9
(9, '876 Willow St', 'Cityville', 'Stateville', '32109', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(9, '109 Oak St', 'Townsville', 'Stateville', '65432', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- Cstomer 10
(10, '432 Elm St', 'Villagetown', 'Stateville', '98765', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(10, '765 Pine St', 'Hamletville', 'Stateville', '21098', 'Countryland', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO vat_history (
    category_id, vat, effective_date, created_by, updated_by, created_at, updated_at) 
    VALUES (1, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (4, 0.025, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (5, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (6, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (7, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (8, 0.05, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (9, 0.02, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (10, 0.03, CURRENT_TIMESTAMP, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
   

-- INSERT INTO orders(
-- 	order_date, customer_id, employee_id, total_amount, delivery_address_id, created_by, updated_by, created_at, updated_at)
-- 	VALUES
--     (CURRENT_TIMESTAMP, 1, 1, 99.99, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 2, 2, 149.99, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 3, 3, 199.99, 5, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 4, 4, 249.99, 7, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 5, 5, 299.99, 9, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 6, 6, 349.99, 11, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 7, 7, 399.99, 13, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 8, 8, 449.99, 15, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 9, 9, 499.99, 17, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 10, 10, 549.99, 19, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
-- (CURRENT_TIMESTAMP, 1, 1, 99.99, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 2, 2, 149.99, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 3, 3, 199.99, 5, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 4, 4, 249.99, 7, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 5, 5, 299.99, 9, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 6, 6, 349.99, 11, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 7, 7, 399.99, 13, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 8, 8, 449.99, 15, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 9, 9, 499.99, 17, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (CURRENT_TIMESTAMP, 10, 10, 549.99, 19, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- INSERT INTO order_details(
-- 	order_id, product_id, quantity, created_by, updated_by, created_at, updated_at)
-- 	VALUES 
-- (1, 1, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (1, 3, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 2
-- (2, 2, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (2, 4, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 3
-- (3, 3, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (3, 5, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 4
-- (4, 4, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (4, 6, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 5
-- (5, 5, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (5, 7, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 6
-- (6, 6, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (6, 8, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 7
-- (7, 7, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (7, 9, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 8
-- (8, 8, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (8, 10, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 9
-- (9, 9, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (9, 11, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 10
-- (10, 10, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (10, 12, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- (11, 1, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (11, 3, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 2
-- (12, 2, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (12, 4, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 3
-- (13, 3, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (13, 5, 4, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 4
-- (14, 4, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (14, 6, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 5
-- (15, 5, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (15, 7, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 6
-- (16, 6, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (16, 8, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 7
-- (17, 7, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (17, 9, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 8
-- (18, 8, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (18, 10, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 9
-- (19, 9, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (19, 11, 2, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Order 10
-- (20, 10, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (20, 12, 3, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- INSERT INTO payment(
-- 	order_id, customer_id, amount, payment_date, payment_method, created_by, updated_by, created_at, updated_at)
-- 	VALUES 
-- -- Payment for Order 1
-- (1, 1, 1999.98, '2023-07-05', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 2
-- (2, 1, 119.97, '2023-07-06', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 3
-- (3, 2, 221.96, '2023-07-07', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 4
-- (4, 2, 189.96, '2023-07-08', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 5
-- (5, 3, 55.97, '2023-07-09', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 6
-- (6, 3, 79.97, '2023-07-10', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 7
-- (7, 4, 61.96, '2023-07-11', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 8
-- (8, 4, 203.96, '2023-07-12', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 9
-- (9, 5, 104.97, '2023-07-13', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 10
-- (10, 5, 249.97, '2023-07-14', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
-- (11, 1, 1999.98, '2023-07-05', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 2
-- (12, 1, 119.97, '2023-07-06', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 3
-- (13, 2, 221.96, '2023-07-07', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 4
-- (14, 2, 189.96, '2023-07-08', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 5
-- (15, 3, 55.97, '2023-07-09', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 6
-- (16, 3, 79.97, '2023-07-10', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 7
-- (17, 4, 61.96, '2023-07-11', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 8
-- (18, 4, 203.96, '2023-07-12', 'Credit Card', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 9
-- (19, 5, 104.97, '2023-07-13', 'PayPal', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Payment for Order 10
-- (20, 5, 249.97, '2023-07-14', 'Cash', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- INSERT INTO price_history(
-- 	price, effective_date, change_reason, created_by, updated_by, created_at, updated_at)
-- 	VALUES -- Price history for Product 1
-- (999.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (899.99, CURRENT_TIMESTAMP, 'Discount promotion', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 2
-- (19.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (15.99, CURRENT_TIMESTAMP, 'Summer sale', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 3
-- (899.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (799.99, CURRENT_TIMESTAMP, 'Limited-time offer', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 4
-- (24.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (19.99, CURRENT_TIMESTAMP, 'Clearance sale', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 5
-- (12.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (9.99, CURRENT_TIMESTAMP, 'Special promotion', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 6
-- (19.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (16.99, CURRENT_TIMESTAMP, 'Summer sale', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 7
-- (29.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (24.99, CURRENT_TIMESTAMP, 'Discount promotion', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 8
-- (599.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (549.99, CURRENT_TIMESTAMP, 'Limited-time offer', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 9
-- (1499.99,CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (1399.99, CURRENT_TIMESTAMP, 'Discount promotion', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- -- Price history for Product 10
-- (9.99, CURRENT_TIMESTAMP, 'Initial price', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
-- (7.99, CURRENT_TIMESTAMP, 'Summer sale', 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


