CREATE TABLE Customer (
  customer_id SERIAL primary key,
  address VARCHAR(50),
  first_name VARCHAR(20),
  last_name VARCHAR(30),
  phone_number VARCHAR(20),
  email_address VARCHAR(30),
  payment_info VARCHAR(30)
);

CREATE TABLE Vendor (
  vendor_id SERIAL primary key,
  name VARCHAR(50),
  address VARCHAR(50),
  phone_number VARCHAR(30),
  email_address VARCHAR(30)
  );

CREATE TABLE Product (
  product_id SERIAL primary key,
  product_name VARCHAR(50),
  product_price NUMERIC(6,2),
  product_weigh NUMERIC(5,2),
  product_rating INTEGER,
  product_description VARCHAR(100),
  vendor_id INTEGER,
  foreign KEY(vendor_id) references Vendor(vendor_id)
  );

CREATE TABLE Order_ (
  order_id SERIAL primary key,
  total NUMERIC(6,2),
  promo_code VARCHAR(10),
  delivery_date DATE,
  order_date DATE default current_date,
  shipping VARCHAR(50),
  shipping_address VARCHAR(50),
  shipment_number INTEGER,
  tracking_number VARCHAR(30),
  customer_id INTEGER,
  foreign key(customer_id) references Customer(customer_id)
);

CREATE TABLE Product_Order (
  product_order_id SERIAL primary key,
  product_id INTEGER,
  order_id INTEGER,
  foreign KEY(product_id) references Product(product_id),
  foreign KEY(order_id) references Order_(order_id)
);
