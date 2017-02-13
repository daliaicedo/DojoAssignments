use sakila;
select film.title, film.description, film.release_year
from film, film_actor
where film_actor.film_id = film.film_id and film_actor.actor_id = 5


