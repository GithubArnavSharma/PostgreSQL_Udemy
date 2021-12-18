-- Return the top 3 movies with the highest international takings

SELECT * FROM movie_revenues
WHERE international_takings IS NOT NULL
ORDER BY international_takings DESC
LIMIT 3;

-- Concatenate the first and last names of the directors, seperated by a space and call this new column full_name

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM directors;

-- Return the actors with missing first_names or missing date_of_births

SELECT * FROM actors
WHERE first_name IS NULL
OR date_of_birth IS NULL;
