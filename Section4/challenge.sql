-- Insert data into the owners table

INSERT INTO owners (owner_id, first_name, last_name, city, state, email)
VALUES (1, 'Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),
	   (2, 'Emma', 'Johnson', 'Seattle', 'WA', 'emjohnson@gmail.com'),
	   (3, 'John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com'),
	   (4, 'Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com'),
	   (5, 'Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),
	   (7, null, 'Maxwell', null, 'CA', 'lordmaxwell@gmail.com');
	   
SELECT * FROM owners;

-- Insert data into the pets table

INSERT INTO pets (species, full_name, age, owner_id)
VALUES ('Dog', 'Rex', 6, 1),
	   ('Rabbit', 'Fluffy', 2, 5),
	   ('Cat', 'Tom', 8, 2),
	   ('Mouse', 'Jerry', 2, 2),
	   ('Dog', 'Biggies', 4, 1),
	   ('Tortoise', 'Squirtle', 42, 3);
	   
SELECT * FROM pets;

-- Update Fluffy the rabbits age to 3

UPDATE pets
SET age = 3
WHERE pet_id = 2;

-- Delete Mr Maxwell from the owners table

DELETE FROM owners
WHERE owner_id = 7;
