use world;
select countries.name as country, countries.surface_area, countries.population
from countries
where countries.surface_area < 501 and countries.population > 100000