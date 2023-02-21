-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment 
WHERE amount BETWEEN 1.99 AND 3.99;
4809


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
Zorro Ark

-- 4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
0


-- 5. What store employee (get the id) sold the most rentals?
SELECT rental.staff_id, COUNT(*) as rental_count
FROM rental
JOIN staff ON rental.staff_id = staff.staff_id
GROUP BY rental.staff_id
ORDER BY rental_count DESC;
staff_id 1

-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district) as district_count
FROM address;
378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*) as actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
film_id 508

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) 
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%es';
13

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(*) 
FROM payment 
JOIN customer ON payment.customer_id = customer.customer_id 
JOIN rental ON customer.customer_id = rental.customer_id 
WHERE customer.customer_id BETWEEN 380 AND 430 
GROUP BY amount 
HAVING COUNT(rental.rental_id) > 250;
11

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(DISTINCT rating) AS num_categories, rating, COUNT(*) AS num_movies 
FROM film 
GROUP BY rating 
ORDER BY num_movies DESC 
5 rating catgeories 
PG-13 has the most movies 






