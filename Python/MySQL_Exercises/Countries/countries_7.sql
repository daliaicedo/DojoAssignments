use world;
select countries.name, cities.district, cities.name, cities.population
from cities, countries
where countries.id = cities.country_id 
	and countries.name = "Argentina" 
    and cities.district = "Buenos Aires" 
    and cities.population > 500000