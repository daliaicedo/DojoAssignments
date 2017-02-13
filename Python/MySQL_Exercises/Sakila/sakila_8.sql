-- What query would you run to get all the action films which are joined by SANDRA KILMER? 
-- Your query should return film title, description, release year, rating, special features, 
-- genre (category), and actor's first name and last name.
use sakila;
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
from film, film_actor, film_category, category, actor
where film.film_id =  film_category.film_id
	and film_category.category_id = category.category_id
    and film_actor.actor_id = actor.actor_id
    and film_actor.film_id = film.film_id
    and category.name = "Action"
    and actor.first_name = "SANDRA"
    and actor.last_name = "KILMER"