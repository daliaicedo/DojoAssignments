use world;
select countries.name as "country", cities.population as "city_pop", cities.name
from countries, cities
where cities.country_id=countries.id and countries.name="Mexico" and cities.population > 500000;