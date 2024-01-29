-- inserting into customer table
insert into customer (
	first_name, 
	last_name,
	address,
	phone_number,
	email_address,
	payment_info
) values(
-- values being inserted into column
	'Alex',
	'Huynh',
	'2977 California St',
	'9255193662',
	'alex.va.huynh@gmail.com',
	'1234 1234 1234 1234 08/24 212'
); -- end of sql statement
-- query customer to ensure data was inserted
select *
from customer;

-- inserting into vendor table
insert into vendor (
	name, 
	address,
	phone_number,
	email_address
) values(
-- values being inserted into column
	'Pokemon Inc',
	'123 Victory Road',
	'800-pok-emon',
	'gottacatchthemall@pokemon.com'
); -- end of sql statement
-- query vendor to ensure data was inserted
select *
from vendor;

-- inserting into product table
insert into product (
    product_name,
    product_price,
    product_weigh,
    product_rating ,
    product_description,
    vendor_id
) values(
-- values being inserted into column
    'Pokemon 151 Booster Pack',
    29.99,
 	42,
	4,
	'rehashing of the original 151 Pokemon',
	1
);-- end of sql statement
-- query product to ensure data was inserted
select *
from product;

-- inserting into order table
insert into order_ (
    total,
    promo_code,
    delivery_date,
    shipping,
    shipping_address,
    shipment_number,
    tracking_number,
    customer_id
) values(
-- values being inserted into column
	57.99,
	'POKEMON',
	'1/31/2024',
	'2 day shipping',
	'2977 California St',
	212324,
	'10111213',
	1
); -- end of sql statement
-- query order to ensure data was inserted
select *
from order_;

-- inserting into product order table
insert into product_order  (
    product_id,
    order_id 
) values(
-- values being inserted into column
	3,
	2
); -- end of sql statement
-- query product order to ensure data was inserted
select *
from product_order ;
