SELECT * FROM address

SELECT name FROM category
WHERE name ILIKE ('C%');

SELECT first_name, last_name FROM actor
WHERE first_name ILIKE '%y'AND last_name ILIKE '%ies%';

SELECT district, phone FROM address
WHERE district IN ('Alberta', 'California');

SELECT district, phone FROM address
WHERE district IN ('Alberta', 'California');

SELECT * FROM film

SELECT customer_id, amount, payment_date FROM payment
WHERE  payment_date BETWEEN '2007-02-16'AND '2007-02-19'
ORDER BY payment_date DESC;


SELECT title, release_year, MIN(rental_rate) 
FROM film 
GROUP BY title,release_year 
HAVING MIN(rental_rate) >0.99
ORDER BY title ASC;

SELECT SUM (replacement_cost) AS total FROM film

SELECT MIN (rental_rate),
MAX (rental_rate),
ROUND(AVG(rental_rate),2) FROM film;

SELECT rental_rate, SUM (replacement_cost) FROM film
GROUP BY rental_rate
ORDER BY SUM (replacement_cost) DESC
LIMIT 1;
