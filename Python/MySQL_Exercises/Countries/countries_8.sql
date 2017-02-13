use world;
select countries.region, count(*) as "number_countries"
from countries 
group by region