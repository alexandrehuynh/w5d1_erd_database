-- Inserting data into Customers
INSERT INTO customers (name, email) VALUES ('Oliver Clozeoff', 'Badname@yahoo.com');
INSERT INTO customers (name, email) VALUES ('Timothee Chalamet', 'datingKylie@aol.com');
-- query customer to ensure data was inserted
select *
from customers;

-- Inserting data into Movies
INSERT INTO movies (title, duration) VALUES ('Dune', 166);
INSERT INTO movies (title, duration) VALUES ('The Matrix', 136);
INSERT INTO movies (title, duration) VALUES ('Inside Out', 95);
-- query movies to ensure data was inserted
select *
from movies;

-- Inserting data into Screenings
INSERT INTO screenings (movie_id, screening_time, theater_number) VALUES (1, '2024-01-31 19:00:00', 1);
INSERT INTO screenings (movie_id, screening_time, theater_number) VALUES (1, '2024-02-01 21:30:00', 2);
INSERT INTO screenings (movie_id, screening_time, theater_number) VALUES (2, '2024-02-14 20:00:00', 1);
-- query screenings to ensure data was inserted
select *
from screenings;

-- Inserting data into Tickets
INSERT INTO tickets (screening_id, customer_id) VALUES (1, 1); -- Customer 1 attending the first screening of Dune
INSERT INTO tickets (screening_id, customer_id) VALUES (3, 2); -- Customer 2 attending the first screening of The Matrix
INSERT INTO tickets (screening_id, customer_id) VALUES (2, 1); -- Customer 1 attending the first screening of Inside Out
-- query tickets to ensure data was inserted
select *
from tickets;

-- Inserting data into Concessions
INSERT INTO concessions (customer_id, item_name, price) VALUES (1, 'Popcorn', 7.00);
INSERT INTO concessions (customer_id, item_name, price) VALUES (2, 'Soda', 3.50);
INSERT INTO concessions (customer_id, item_name, price) VALUES (2, 'Candy', 4.50);
-- query concessions to ensure data was inserted
select *
from concessions;