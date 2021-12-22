-- Using uncorrelated subqueries

SELECT movie_name, movie_length FROM movies
WHERE movie_length > 
(SELECT AVG(movie_length) FROM movies);

SELECT first_name, last_name FROM directors
WHERE date_of_birth > 
(SELECT date_of_birth FROM directors 
WHERE first_name = 'James' 
AND last_name = 'Cameron');

SELECT first_name, last_name FROM directors
WHERE date_of_birth > 
(SELECT date_of_birth FROM actors 
WHERE first_name = 'Tom' 
AND last_name = 'Cruise');

-- Using IN and JOIN in subqueries

SELECT movie_name FROM movies
WHERE movie_id IN
(SELECT movie_id FROM movie_revenues
WHERE international_takings > domestic_takings);

SELECT mo.movie_id, mo.movie_name, d.first_name, d.last_name FROM movies mo
JOIN directors d ON mo.director_id = d.director_id
WHERE mo.movie_id IN
(SELECT movie_id FROM movie_revenues
WHERE international_takings > domestic_takings);

-- Correlated subqueries

SELECT d1.first_name, d1.last_name, d1.date_of_birth, d1.nationality FROM directors d1
WHERE d1.date_of_birth = 
(SELECT MIN(date_of_birth) FROM directors d2
WHERE d1.nationality = d2.nationality);

SELECT m1.movie_name, m1.movie_lang, m1.movie_length FROM movies m1
WHERE m1.movie_length = 
(SELECT MAX(m2.movie_length) FROM movies m2
WHERE m1.movie_lang = m2.movie_lang);
