-- Select the directors first and last names and movie names in upper case

SELECT UPPER(d.first_name), UPPER(d.last_name), UPPER(mo.movie_name) FROM directors d
JOIN movies mo ON d.director_id = mo.movie_id;

-- Select the first and last names, in initial capitalisation format of all 
-- the actors who have starred in a Chinese or Korean movie

SELECT INITCAP(ac.first_name), INITCAP(ac.last_name) FROM actors ac
JOIN movies_actors ma ON ac.actor_id = ma.actor_id
JOIN movies mo ON ma.movie_id = mo.movie_id
WHERE mo.movie_lang IN ('Chinese', 'Korean');

-- Retrieve the reversed first and last names of each directors and the first three characters of
-- their nationality

SELECT REVERSE(first_name), REVERSE(last_name), LEFT(nationality, 3) FROM directors;

-- Retrieve the initials of each director and display it in one column named 'initials'

SELECT CONCAT(LEFT(first_name, 1), '.', LEFT(last_name, 1)) AS initials FROM directors;
