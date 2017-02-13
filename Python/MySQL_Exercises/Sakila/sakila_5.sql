-- What query would you run to get all the films with a "rating = G" and "special feature = behind the scenes", 
-- joined by actor_id = 15? Your query should return the film title, description, release year, rating, and special feature. 
-- Hint: You may use LIKE function in getting the 'behind the scenes' part.
use sakila;
select film.title, film.rating, film.special_features, film_actor. actor_id
from film_actor, film
where film.film_id= film_actor.film_id
	and film.rating = "G"
    and film.special_features = "Behind The Scenes"
    and film_actor.actor_id  = 15