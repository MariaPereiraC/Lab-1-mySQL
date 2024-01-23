USE Sakila;
#Use the sakila database to do the following tasks:

#Display all available tables in the Sakila database.
Show Tables  ; 

#Retrieve all the data from the tables actor, film and customer.
Select * From actor ;
Select * From film ; 
Select * From customer ;

#Retrieve the following columns from their respective tables:

#3.1 Titles of all films from the film table
Select title ;
From film;

#3.2 List of languages used in films, with the column aliased as language from the language table
Select * from language ;
Select name from language ;

#3.3 List of first names of all employees from the staff table
Select * from staff; 
Select first_name from staff;

#Retrieve unique release years.
Show Tables; 
Select * from film ;
Select distinct release_year
From film;

#Counting records for database insights:
#5.1 Determine the number of stores that the company has.
Select * from store ;
Select distinct store_id
From store;

#5.2 Determine the number of employees that the company has.
Select * from Staff ;
Select distinct staff_id
From staff;

#5.3 Determine how many films are available for rent and how many have been rented.

Select count(distinct inventory_id) AS films_available
From inventory;

Select count(distinct rental_id) AS films_rented
From rental;


#5.4 Determine the number of distinct last names of the actors in the database.
Select * from actor;
Select count(distinct last_name) AS distinct_last_names
From actor;

#Retrieve the 10 longest films.
SELECT length
FROM film
ORDER BY length DESC
LIMIT 10;

#Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".
#BONUS:
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

#Hint: use LIKE operator. More information here.
#7.3 Determine the number of films that include Behind the Scenes content
SELECT count(*)
FROM film
Where special_features like '%Behind the Scenes%';

