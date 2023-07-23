-- Administrator 
-- - Access Privileges: Administrators have full access to the database 
-- - Restrictions: prevent unauthorized changes to critical data (User Payment)
-- Marketing Team
-- -Access Privileges: Can access to product, order, customer data .
-- - Restrictions: Just read-only, all data can access
-- Sale Representative
-- - Access Privileges:  Can access to customer, product, order, payment
-- - Restrictions: just read-only payment, can update data customer, product, order
-- Store Manager
-- - Access Privileges:  Can access to product
-- - Restrictions: can update, create, delete product in store.
-- Customer
-- - Access Privileges: Can access to customer, product, order 
-- - Restrictions: product just read-only



Create Role Administrator ;
GRANT SELECT,INSERT,UPDATE,DELETE ON product,orders,customer,category,deliveryaddress,employee,orderdetails,pricehistory to Administrator ;
GRANT SELECT ON payment to Administrator ;


Create Role MarketingTeam;
GRANT SELECT ON product,orders,customer  to MarketingTeam;

Create Role SaleRepresentative;
GRANT SELECT,INSERT,UPDATE,DELETE ON product,orders,customer to SaleRepresentative;
GRANT SELECT ON payment to SaleRepresentative;

Create Role StoreManager;
GRANT SELECT,INSERT,UPDATE,DELETE ON product to StoreManager;
GRANT SELECT ON orders to StoreManager;

Create Role Customer;
GRANT SELECT,UPDATE,DELETE ON customer to Customer;
GRANT SELECT ON product to Customer;