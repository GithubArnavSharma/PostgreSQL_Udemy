-- Use the substring function to retrieve the first 6 characters of each movie name and the year they
-- released

SELECT SUBSTRING(movie_name, 1, 6) AS movie_name, SUBSTRING(release_date::TEXT, 1, 4) AS release_year 
FROM movies;

-- Retrieve the first name initial and last name of every actor born in May

SELECT LEFT(first_name, 1) AS first_name_initial, last_name FROM actors
WHERE SPLIT_PART(date_of_birth::TEXT, '-', 2) = '05';

-- Replace the movie language for all English language movies, with age certificate rating 18, to 'Eng'

UPDATE movies
SET movie_lang = REPLACE(movie_lang, 'English', 'Eng')
WHERE age_certificate = '18';
