-- Select columns from data

SELECT * FROM directors;

SELECT first_name FROM directors;

SELECT first_name, last_name FROM directors;

SELECT first_name, last_name, nationality FROM directors;

-- Selecting using a WHERE clause

SELECT * FROM movies
WHERE age_certificate = '15';

SELECT * FROM movies
WHERE age_certificate = '15'
AND movie_lang = 'Chinese';

SELECT * FROM movies
WHERE age_certificate = '15'
OR movie_lang = 'Chinese';

SELECT * FROM movies
WHERE movie_lang = 'English'
AND age_certificate = '15'
AND director_id = '27';

-- Using logical operators for selecting data

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length >= 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length < 120;

SELECT movie_name, movie_length FROM movies
WHERE movie_length <= 120;

SELECT * FROM movies
WHERE release_date < '1999-12-31';

SELECT * FROM movies
WHERE movie_lang > 'English';

-- Using IN and NOT IN for selecting data

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John', 'Peter');

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);

-- Using the LIKE clause to select data

SELECT * FROM actors
WHERE first_name LIKE 'P%';

SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

SELECT * FROM actors
WHERE first_name LIKE '%r';

SELECT * FROM actors
WHERE first_name LIKE '%rl%';

SELECT * FROM actors
WHERE first_name LIKE '__rl__';

-- Using the BETWEEN clause to select data

SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang BETWEEN 'E' AND 'Portuguese';

-- Ordering results returned from actors table

SELECT * FROM actors;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name;

SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY first_name DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
ORDER BY actor_id DESC;

SELECT actor_id, first_name, last_name, date_of_birth FROM actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;

-- Limiting results from the movie revenue table

SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 3;

SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 5;

-- Using fetch on the movies table

SELECT movie_id, movie_name FROM movies
FETCH FIRST ROW ONLY;

SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- Select distinct values from the movies table

SELECT DISTINCT movie_lang FROM movies
ORDER BY movie_lang;

SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

SELECT DISTINCT * FROM movies
ORDER BY movie_lang;
