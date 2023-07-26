SELECT * FROM film LIMIT 5;
SELECT film_id, title FROM film;
SELECT *FROM film WHERE film_id < 4;
SELECT * FROM film WHERE rating='PG'OR rating ='G';
SELECT *FROM actor WHERE first_name IN ('Angela', 'Angelina', 'Audrey');
SELECT * FROM actor WHERE first_name = 'Julia';
SELECT * FROM actor WHERE first_name IN ('Chris', 'Cameron', 'Cuba');
SELECT * FROM customer WHERE first_name = 'Jamie Rice';
SELECT amount, payment_date FROM payment WHERE amount < 1; 
SELECT DISTINCT last_update FROM store;
SELECT * FROM city ORDER BY country_id, city;
SELECT DISTINCT customer_id FROM rental WHERE return_date IS NOT NULL ORDER BY customer_id DESC LIMIT 3;
SELECT COUNT(*) AS cantidad_nc17 FROM film WHERE rating = 'NC-17';
SELECT COUNT(*) AS cantidad_pg_pg13 FROM film WHERE rating IN ('PG', 'PG-13');
SELECT COUNT(DISTINCT customer_id) AS customer_id FROM rental;
SELECT last_name, COUNT(*) AS cantidad_clientes FROM customer GROUP BY last_name HAVING COUNT(*) > 1;
SELECT last_name, COUNT(*) AS cantidad_clientes FROM customer GROUP BY last_name;
SELECT film_id, COUNT(actor_id) AS cantidad_actores FROM film_actor GROUP BY film_id ORDER BY cantidad_actores DESC LIMIT 1;
SELECT actor_id, COUNT(film_id) AS cantidad_peliculas FROM film_actor GROUP BY actor_id ORDER BY cantidad_peliculas DESC LIMIT 1; 
SELECT country_id, COUNT(*) AS cantidad_ciudades FROM city GROUP BY country_id ORDER BY COUNT(*) ASC;
SELECT ROUND(AVG(rental_rate), 2) AS tarifa_alquiler_promedio FROM film;
SELECT actor_id, CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor
ORDER BY LENGTH(CONCAT(first_name, ' ', last_name)) DESC
LIMIT 10;