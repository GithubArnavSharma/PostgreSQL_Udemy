-- Create the owners table

CREATE TABLE owners (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);

SELECT * FROM owners;

--Create the pets table

CREATE TABLE pets (
	id SERIAL PRIMARY KEY,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT,
	owner_id INT REFERENCES owners (id);
);

SELECT * FROM pets;

--Add the column 'email' to the owners table

ALTER TABLE owners
ADD COLUMN email VARCHAR(50) UNIQUE;

--Change the type of last_name from the owners table 

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;
