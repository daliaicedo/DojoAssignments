-- What query would you run to get all the actors that joined in the film_id = 369? 
-- Your query should return the film_id, title, actor_id, and actor_name.
use sakila;
select film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
from actor, film, film_actor
where film.film_id = film_actor.film_id 
	and film_actor.actor_id= actor.actor_id	
    and film.film_id = 369
