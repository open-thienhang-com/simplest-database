/* Case 1: Coupon ( Id = 1 ) Sale 10k / bill  */

create or replace function print_payment_bill_with_coupon() returns 
table (

	order_id integer, 
	order_date date, 
	customer_name text,
	product_name text,
	quantity integer,
	price numeric,
	discount_amount numeric,
	total_amount numeric
)
as $$
begin
	return query
	select o.id,o.order_date, o.customer_name, od.item_name, od.quantity, od.price,c.price, o.discount_amount, (od.quantity * od.price -c.price) as total_amount
	from oders o 
	join orderdetails od on o.id = od.orderid 
	join coupons as c on o.coupon = c.coupons_code
	where c.is_use = false and c.begin_date < current_date and c.end_date > current_date 
end


/* Case 2: Coupon (Id = 2 ) Sale 20% */

create or replace function print_payment_bill_with_coupon() returns 
table (

	order_id integer, 
	order_date date, 
	customer_name text,
	product_name text,
	quantity integer,
	price numeric,
	discount_amount numeric,
	total_amount numeric
)
as $$
begin
	return query
	select o.id,o.order_date, o.customer_name, od.item_name, od.quantity, od.price,c.price, o.discount_amount, (od.quantity * od.price * c.percents ) as total_amount
	from oders o 
	join orderdetails od on o.id = od.orderid 
	join coupons as c on o.coupon = c.coupons_code
	where c.is_use = false and c.begin_date < current_date and c.end_date > current_date 
end

/* case 3: Gift if total_amount > 1000000 */

create or replace function print_payment_bill_with_coupon() returns 
table (

	order_id integer, 
	order_date date, 
	customer_name text,
	product_name text,
	quantity integer,
	price numeric,
	gift_id text,
	total_amount numeric
)
as $$
begin
	return query
	update gift 
	set total = g.total -1 from
	( select o.id,o.order_date, o.customer_name,g.gift_name ,od.item_name, od.quantity, od.price,c.price, o.discount_amount, (od.quantity * od.price  ) as total_amount
	from oders o 
	join orderdetails od on o.id = od.orderid 
	join gift as g on o.gift_id = g.gift_id
	where g.number > 0  and g.begin_date < current_date and g.end_date > current_date 
	)
end




