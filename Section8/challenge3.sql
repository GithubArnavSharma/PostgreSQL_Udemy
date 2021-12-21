-- Select the first and last names of all the actors who have starred in movies
-- directed by Wes Anderson

SELECT ac.first_name, ac.last_name FROM actors ac
JOIN movies_actors ma ON ac.actor_id = ma.actor_id
JOIN movies mo ON ma.movie_id = mo.movie_id
JOIN directors d ON mo.director_id = d.director_id
WHERE d.first_name = 'Wes' 
AND d.last_name = 'Anderson';

-- Which director has the highest total domestic takings

SELECT d.first_name, d.last_name FROM directors d
JOIN movies mo ON d.director_id = mo.director_id
JOIN movie_revenues mr ON mo.movie_id = mr.movie_id
WHERE mr.domestic_takings IS NOT NULL
GROUP BY d.first_name, d.last_name
ORDER BY SUM(mr.domestic_takings) DESC
LIMIT 1;
