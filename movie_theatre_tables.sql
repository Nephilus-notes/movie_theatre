CREATE TABLE customer( 
	customer_id serial PRIMARY key
);

ALTER TABLE customer 
ADD COLUMN first_name varchar(45) NOT null;

ALTER TABLE customer 
ADD COLUMN last_name varchar(45)NOT NULL;

ALTER TABLE customer 
ADD COLUMN address varchar(255);

ALTER TABLE customer 
ADD COLUMN billing_info varchar(255)


CREATE TABLE concession_product ( 
	product_id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	price float NOT NULL,
	description varchar(1000)
);

CREATE TABLE concession(
	concession_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id),
	product_id integer REFERENCES concession_product(product_id),
	date_of_sale timestamp, 
	quantity integer NOT NULL
);

CREATE TABLE theatre ( 
	theatre_id serial PRIMARY KEY,
	capacity integer NOT null
);

CREATE TABLE movie (
	movie_id serial PRIMARY KEY,
	run_time interval
);

CREATE TABLE movie_theatre ( 
	"name" varchar(255) PRIMARY KEY,
	movie_id integer REFERENCES movie(movie_id),
	"location" varchar(255) ,
	theatre_id integer REFERENCES theatre(theatre_id)
);

CREATE TABLE seating(
	seating_id serial PRIMARY KEY,
	theatre_id integer REFERENCES theatre(theatre_id)
);

CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id),
	movie_id integer REFERENCES movie(movie_id),
	date_of_purchase timestamp NOT null,
	date_of_event timestamp NOT null
);

