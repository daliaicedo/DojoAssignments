use sakila;
select film.title, film.description, film.release_year, film.rating, film.special_features, film_category.category_id, category.name
from film, category, film_category
where film_category.category_id = category.category_id
	and film.film_id = film_category.film_id
	and film.rental_rate = 2.99
    and category.name = "Drama"