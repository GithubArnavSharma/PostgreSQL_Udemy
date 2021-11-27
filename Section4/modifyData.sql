-- Insert data into the examples table

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);

SELECT * FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 29),
       ('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 33),
       ('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29),
       ('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);
	   
-- Update data from the examples data

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

SELECT * FROM examples;

UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';

UPDATE examples
SET first_name = 'James', age = 55
WHERE example_id = 5;

-- Delete data from the examples table

DELETE FROM examples
WHERE example_id = 2;

SELECT * FROM examples;

DELETE FROM examples
WHERE nationality = 'GBR';

DELETE FROM examples;
