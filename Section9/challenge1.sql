-- Select the first and last names of all the actors older than Marlon Brando

SELECT first_name, last_name FROM actors
WHERE date_of_birth < 
(SELECT date_of_birth FROM actors
WHERE first_name = 'Marlon'
AND last_name = 'Brando');

-- Select the movies names of movies that have domestic takings above 300 million

SELECT movie_name FROM movies
WHERE movie_id IN
(SELECT movie_id FROM movie_revenues
WHERE domestic_takings > 300);

-- Return the shortest and longest movie length for movies with an above average
-- domestic takings

SELECT MIN(movie_length), MAX(movie_length) FROM movies
WHERE movie_id IN
(SELECT movie_id FROM movie_revenues
WHERE domestic_takings > 
(SELECT AVG(domestic_takings) FROM movie_revenues));
