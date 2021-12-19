-- How many directors are there per nationality?

SELECT nationality, COUNT(*) FROM directors
GROUP BY nationality;

-- What is the sum total movie length for each age certificate and movie language combination?

SELECT age_certificate, movie_lang, SUM(movie_length) FROM movies
GROUP BY age_certificate, movie_lang;

-- Return the movie languages which have a sum total movie length of over 500 minutes

SELECT movie_lang FROM movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 500;
