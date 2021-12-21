-- Using inner joins on tables

INSERT INTO directors (first_name, last_name, date_of_birth, nationality)
VALUES ('Christopher', 'Nolan', '1970-07-30', 'British');

SELECT * FROM directors;
SELECT * FROM movies;

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id;

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;

SELECT directors.director_id, directors.first_name, directors.last_name, movies.movie_name FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
WHERE movies.movie_lang = 'Japanese'
ORDER BY movies.movie_length;

-- Shorted version of inner join

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang = 'Japanese'
ORDER BY mo.movie_length;

SELECT mo.movie_name, mr.domestic_takings, mr.international_takings FROM movies mo
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
ORDER BY mr.domestic_takings;

-- Joining two tables together with USING

SELECT mo.movie_name, mr.domestic_takings FROM movies mo
JOIN movie_revenues mr USING (movie_id)
WHERE mo.age_certificate IN ('12', '15', '18')
ORDER BY mr.domestic_takings DESC;

-- Using left join on tables

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
LEFT JOIN directors d ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
LEFT JOIN movies mo ON d.director_id = mo.director_id
WHERE d.nationality = 'British';

-- Using right join on tables

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
RIGHT JOIN movies mo ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
RIGHT JOIN directors d ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
RIGHT JOIN directors d ON d.director_id = mo.director_id
WHERE mo.age_certificate = '18';

-- Using full join on tables

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM movies mo
FULL JOIN directors d ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
FULL JOIN movies mo ON d.director_id = mo.director_id;

SELECT d.director_id, d.first_name, d.last_name, mo.movie_name FROM directors d
FULL JOIN movies mo ON d.director_id = mo.director_id
WHERE mo.movie_lang IN ('German', 'Korean')
ORDER BY d.last_name;
