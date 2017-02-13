use world;
select languages.language, languages.percentage, countries.name
from countries, languages
where languages.percentage > "89" and languages.country_id = countries.id
order by languages.percentage desc;
