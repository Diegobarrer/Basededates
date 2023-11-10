SELECT * FROM address

SELECT name FROM category
WHERE name ILIKE ('C%');

SELECT first_name, last_name FROM actor
WHERE first_name ILIKE '%y'AND last_name ILIKE '%ies%';

SELECT district, phone FROM address
WHERE district IN ('Alberta', 'California');

SELECT district, phone FROM address
WHERE district = 'Alberta'