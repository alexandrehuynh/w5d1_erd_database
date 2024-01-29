-- Customers Table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) 
);

-- Movies Table
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    duration INTEGER  -- Duration in minutes
);

-- Screenings Table
CREATE TABLE screenings (
    screening_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies(movie_id),
    screening_time TIMESTAMP,
    theater_number INT
);

-- Tickets Table
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    screening_id INT REFERENCES screenings(screening_id),
    customer_id INT REFERENCES customers(customer_id)
);

-- Concessions Table
CREATE TABLE concessions (
    concession_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    item_name VARCHAR(100),
    price DECIMAL(10, 2)
);