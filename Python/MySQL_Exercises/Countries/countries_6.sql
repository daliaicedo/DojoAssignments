use world;
select countries.name as "country", countries.government_form as "gov", countries.capital, countries.life_expectancy
from countries
where countries.government_form = "Constitutional Monarchy" and countries.capital > 200 and countries.life_expectancy > 75