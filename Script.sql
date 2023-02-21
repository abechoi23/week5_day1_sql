-- This is a comment

-- Basic SELECT query
SELECT first_name, last_name
FROM actor;

SELECT *
FROM actor;

--FILTERING
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick' OR first_name = 'Jennifer';

SELECT actor_id, first_name, last_name
FROM actor 
WHERE first_name = 'Christian' AND last_name = 'Gable';

-- Find all the actors with the last name starting with N
SELECT first_name, last_name
FROM actor 
WHERE last_name LIKE 'N%'; -- % -> Wildcard CHARACTER

-- Find all the actors with the last name starting with N and ending with an n
SELECT first_name, last_name
FROM actor 
WHERE last_name LIKE 'N%n'; -- % -> Wildcard CHARACTER

-- Find all the actors with the last name starting with N
SELECT first_name, last_name
FROM actor 
WHERE last_name LIKE 'N_____'; -- _ -> only one CHARACTER <- 5 _

-- Query for all first_names that start with K and have 2 letters after the K using LIKE/WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Find all of the films that have the word 'Scientist' in the description
SELECT title, description 
FROM film 
WHERE description LIKE '%Scientist%'

-- Find all of the films with a rating of PG OR PG-13
SELECT title, rating
FROM film 
WHERE rating = 'PG' OR rating = 'PG-13'

-- Comparing operators
-- Greater than >
-- Less than <
-- Greater than or equal to >=
-- Less than or equal to <=
-- Not equal to <>

-- Find all the payments below $2
SELECT *
FROM payment 
WHERE amount < 2;

-- Find all the payments above $10
SELECT *
FROM payment 
WHERE amount > 10;

-- Find all the payments between $1.99 and $3.99, inclusive
SELECT *
FROM payment 
WHERE amount <= 3.99 AND amount >= 1.99;

-- Find all the payments between $1.99 and $3.99, between
SELECT *
FROM payment 
WHERE amount BETWEEN 1.99 AND 3.99;

-- Order by
SELECT *
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99
ORDER BY amount ASC; -- ascending DESC descending 

-- SQL Aggregations - SUM, AVG, COUNT, MIN, MAX

-- SUM
-- Takes all of the values in a given column, and spits back the sum of the VALUES 
-- Ex: Find the total amount spent by customer ID 319
SELECT SUM(amount)
FROM payment
WHERE customer_id = 319;

-- AVG
-- Ex: Find the average amount spent by customer ID 319
SELECT AVG(amount)
FROM payment
WHERE customer_id = 319;

-- MIN
-- Ex: Find the smallest amount spent by customer ID 319
SELECT MIN(amount)
FROM payment
WHERE customer_id = 319;

-- MAX
-- Ex: Find the largest amount spent by customer ID 319
SELECT MAX(amount)
FROM payment
WHERE customer_id = 319;

-- COUNT
-- Find the amont of rows returned by a given query
SELECT COUNT(*) 
FROM payment
WHERE customer_id = 319;

-- GROUP BY
-- Find the average amount spent for ALL customers
SELECT customer_id, AVG(amount)
FROM payment
GROUP BY customer_id;

-- Find the customer with the most payments made
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT DESC;

-- HAVING
-- Filter out items after the aggregation happens
SELECT customer_id, AVG(amount)
FROM payment
GROUP BY customer_id 
HAVING AVG(amount) > 5
ORDER BY AVG(amount) DESC;

-- DISTINCT
-- Find all of the unique first names for actors
SELECT DISTINCT first_name
FROM actor
ORDER BY first_name;

-- Find how many unique first names
SELECT COUNT(DISTINCT first_name)
FROM actor;






