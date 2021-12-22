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
