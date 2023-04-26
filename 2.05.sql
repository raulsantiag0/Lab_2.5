use sakila;
show tables;
#1
select * from actor;
SELECT first_name FROM actor
 WHERE first_name = 'Scarlett'; 
 #2
 select * from film;
 select count(rental_duration) from film;
 #3
  select * from film;
  select length from film;
  SELECT MAX(length) FROM film;
  SELECT MIN(length) FROM film;
  #4
  SELECT ROUND(AVG(length),6) FROM film;
  #5
  SELECT COUNT(DISTINCT last_name) 
  AS unique_last_names 
  FROM actor;
#6
SELECT DATEDIFF(NOW(), '2005-05-25') 
AS days_operating
 FROM dual;
#7
SELECT rental_id, rental_date, DATE_FORMAT(rental_date, '%M') 
AS rental_month, DATE_FORMAT(rental_date, '%W') 
AS rental_day_of_week, inventory_id, customer_id, return_date, staff_id 
FROM rental 
LIMIT 20;
#8
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, 
CASE 
    WHEN DAYOFWEEK(rental_date) IN (1,7) THEN 'fin de semana'
    ELSE 'día laborable'
END AS tipo_día
FROM rental
LIMIT 20;
#9
SELECT COUNT(*) AS rental_count 
FROM rental 
WHERE rental_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH);
  