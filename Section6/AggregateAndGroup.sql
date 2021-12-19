-- Counting columns

SELECT COUNT(*) FROM movie_revenues;

SELECT COUNT(international_takings) FROM movie_revenues;

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';

-- Using SUM on columns

SELECT SUM(domestic_takings) FROM movie_revenues;

SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100;

SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- Using MIN and MAX on columns

SELECT MAX(movie_length) FROM movies;

SELECT MIN(movie_length) FROM movies;

SELECT MIN(movie_length) FROM movies
WHERE movie_lang = 'Japanese';

SELECT MAX(release_date) FROM movies;

SELECT MIN(release_date) FROM movies;

-- Using the AVG function on columns

SELECT AVG(movie_length) FROM movies;

SELECT AVG(movie_length) FROM movies
WHERE age_certificate = '18';
