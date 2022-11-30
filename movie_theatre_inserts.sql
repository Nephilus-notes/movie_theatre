INSERT INTO customer (first_name, last_name, address, billing_info)
VALUES 
	('Mike', 'Smith', '123 2nd St', '234234234'),
	('Jenny', 'Smith', '124 2nd St', '234234234234'),
	('Max', 'Johnson', '1231 Main St', '12314')
	;
	
INSERT INTO concession_product ("name", price, description)
VALUES 
('hot dog', 1.50, 'A movie theatre staple'),
('popcorn', 3.50, 'A move theatre staple'),
('nachos', 2.75, 'Tex-mex flair on a movie staple')

ALTER TABLE movie 
ADD COLUMN "name" varchar(45) NOT null;

INSERT INTO movie ("name", run_time)
VALUES 
('Flight of the Bumblebee', '2H34M56S');

INSERT INTO theatre (capacity)
VALUES (12314),
	(15513),
	(14234),
	(122);

ALTER TABLE movie_theatre 
DROP COLUMN "name";

INSERT INTO movie_theatre (movie_id, "location", theatre_id)
VALUES 
( 1, 'Ronnies plaza', 1),
( 1, 'Ronnies plaza', 2),
( 2, 'Ronnies plaza', 3);

INSERT INTO concession (customer_id, product_id, date_of_sale, quantity)
VALUES 
	(1, 2, '2004-10-19 10:23:54', 4),
	(2, 3, '2019-10-19 10:23:54', 3);

INSERT INTO ticket( customer_id, movie_id, date_of_purchase, date_of_event)
VALUES (1,1, '2022-10-19 10:23:54', '2022-12-2 10:00:00'),
(2,2, '2022-11-19 12:23:54', '2022-12-2 13:00:00');


INSERT INTO seating (theatre_id)
VALUES
	(1),
	(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(1),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(2),
(3),
(3),
(3),
(3),
(3),
(3),
(3),
(3);