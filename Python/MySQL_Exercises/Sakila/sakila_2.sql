use sakila;
select film.title, film.description, film.release_year, film.rating, film.special_features, category.name
from film, category, film_category
where film_category.category_id = category.category_id and film_category.film_id = film.film_id and category.name = "Comedy";