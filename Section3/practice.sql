-- Modifying tables

CREATE TABLE examples (
	example_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30)
);

SELECT * FROM examples;

-- Adding new columns to the table

ALTER TABLE examples 
ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE examples
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN age INT NOT NULL;

-- Modifying a columns data type

ALTER TABLE examples
ALTER COLUMN nationality TYPE CHAR(3);

SELECT * FROM examples;

ALTER TABLE examples
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN email TYPE VARCHAR(80);

-- Deleting tables from a database

CREATE TABLE practice (
	id SERIAL PRIMARY KEY,
	product_name VARCHAR(15),
	product_price NUMERIC(4,2)
);

SELECT * FROM practice;

DROP TABLE practice;
