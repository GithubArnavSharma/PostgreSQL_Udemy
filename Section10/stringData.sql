-- Using the UPPER and LOWER functions

SELECT UPPER('stop shouting');

SELECT first_name, UPPER(last_name) FROM actors;

SELECT first_name, UPPER(last_name) AS last_name FROM actors;

SELECT LOWER('StOP sHOUtIng');

SELECT LOWER(movie_name) FROM movies;

-- Using the INITCAP function(capitalizes first letter of each word)

SELECT INITCAP('eXAMpLE sTRINg');

SELECT movie_name FROM movies;

SELECT INITCAP(movie_name) FROM movies;

-- Using the LEFT and RIGHT functions

SELECT LEFT('string', 4);

SELECT LEFT('string', -4);

SELECT LEFT(movie_name, 5) FROM movies;

SELECT RIGHT('example', 3);

SELECT RIGHT('example', -3);

SELECT RIGHT(first_name, 2) FROM actors;

-- Using the REVERSE function

SELECT REVERSE('reverse');

SELECT movie_name, REVERSE(movie_name) FROM movies;

-- Using the SUBSTRING function

SELECT SUBSTRING('long string', 2, 6);

SELECT first_name, SUBSTRING(first_name, 3, 4) FROM actors;

-- Using the REPLACE function

SELECT REPLACE('a cat plays with another cat', 'cat', 'dog');

SELECT first_name, last_name, REPLACE(gender, 'M', 'Male') FROM actors;

-- Using the UPDATE function with REPLACE

UPDATE directors
SET nationality = REPLACE(nationality, 'American', 'USA');

UPDATE directors
SET nationality = REPLACE(nationality, 'Brit', 'Engl')
WHERE nationality = 'British';

SELECT * FROM directors

-- Using the SPLIT_PART function

SELECT SPLIT_PART('first_name.last_name@gmail.com', '@', 1);
SELECT SPLIT_PART('first_name.last_name@gmail.com', '@', 2);

SELECT SPLIT_PART('first_name.last_name@gmail.com', '.', 3);

SELECT movie_name, SPLIT_PART(movie_name, ' ', 1) AS first_word, 
SPLIT_PART(movie_name, ' ', 2) AS second_word 
FROM movies;

-- Casting into different datatypes

SELECT date_of_birth::TEXT FROM directors;

SELECT SPLIT_PART(date_of_birth::TEXT, '-', 1) FROM directors;
