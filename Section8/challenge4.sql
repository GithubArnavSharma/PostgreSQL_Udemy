-- Select the first names, last names and dates of birth from directors and actors.
-- Order the results by the date of birth.

SELECT first_name, last_name, date_of_birth FROM directors
UNION ALL
SELECT first_name, last_name, date_of_birth FROM actors
ORDER BY date_of_birth;

-- Select the first and last names of all directors and actors born in the 1960s. 
-- Order the results by last name

SELECT first_name, last_name FROM directors
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
UNION ALL
SELECT first_name, last_name FROM actors
WHERE date_of_birth BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY last_name;
