-- Select the first name, last name, and date of birth for the oldest actors of each gender

SELECT a1.first_name, a1.last_name, a1.date_of_birth FROM actors a1
WHERE a1.date_of_birth = 
(SELECT MIN(date_of_birth) FROM actors a2
WHERE a1.gender = a2.gender);

-- Select the movie name, moive length, and age certificate for movies with an above average length 
-- for their age certificate

SELECT m1.movie_name, m1.movie_length, m1.age_certificate FROM movies m1
WHERE m1.movie_length > 
(SELECT AVG(movie_length) FROM movies m2
WHERE m1.age_certificate = m2.age_certificate);
