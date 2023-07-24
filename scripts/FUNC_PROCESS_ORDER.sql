CREATE OR REPLACE FUNCTION process_order(email_address text, product_ids integer[]) RETURNS text AS
$$
DECLARE
    customer_record customer;
    product_records product[];
    total_cost numeric;
	order_id integer;
BEGIN
	-- Step 1: Validate User/Authorization
   	SELECT * INTO customer_record FROM customer WHERE email = email_address LIMIT 1 FOR UPDATE;
	
	-- Step 2: Check Inventory Availability
    SELECT ARRAY_AGG(p) INTO product_records
    FROM product p
    WHERE productid = ANY(product_ids) AND stock >= 1;
--     FOR UPDATE;

    -- Step 3: Calculate Order Total
    SELECT SUM(price) INTO total_cost
    FROM product
    WHERE productid = ANY(product_ids);
	
	-- Step 4: Generate Order Invoice
	
	INSERT INTO Orders (OrderDate, CustomerID, EmployeeID, TotalAmount, DeliveryAddressID, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt)
	VALUES
	(CURRENT_TIMESTAMP, customer_record.customerid, customer_record.customerid, total_cost, 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) returning orderid INTO order_id;

	
	-- Step 5: Insert Order Details
    INSERT INTO orderdetails (orderid, productid, quantity, createdby, updatedby, createdat, updatedat)
	SELECT order_id, unnest(ARRAY[1, 2, 3]), 1, 'Admin', 'Admin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP;
	
	-- Step 6: Process Payment (Assuming a successful payment)
    INSERT INTO payment (OrderID, CustomerID, Amount, PaymentDate, PaymentMethod, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt)
    VALUES (order_id, customer_record.customerid, total_cost, CURRENT_DATE, 'Credit Card', 'System', 'System', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

    -- Step 7: Update Inventory
    UPDATE product
    SET stock = stock - 1
    WHERE productid = ANY(product_ids);


    RETURN order_id;
EXCEPTION
    WHEN OTHERS THEN
        -- Rollback the transaction on any exception
        RAISE NOTICE 'An error occurred. Rolling back transaction.';
        ROLLBACK;
        RAISE;
END;
$$
LANGUAGE plpgsql;