USE world;
SELECT countries.name as "country_name", COUNT(*) as "num_of_cities"
FROM countries, cities
WHERE cities.country_id = countries.id
GROUP BY countries.name
ORDER BY num_of_cities desc;