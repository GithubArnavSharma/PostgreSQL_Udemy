-- Select the movie names and movie languages of all movies
-- with a language of English, Spanish, or Korean

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang IN ('English', 'Spanish', 'Korean');

-- Select the first and last names of the actors whose 
-- name begins with M and were born between 1940 and 1969

SELECT first_name, last_name FROM actors
WHERE first_name LIKE 'M%'
AND date_of_birth BETWEEN '1940-01-01' AND '1969-12-31';

-- Select the first and last names of directors with the 
-- nationality of British, French, or German born between
-- 1950 and 1980

SELECT first_name, last_name FROM directors
WHERE nationality IN ('British', 'French', 'German')
AND date_of_birth BETWEEN '1950-01-01' AND '1980-12-31';
