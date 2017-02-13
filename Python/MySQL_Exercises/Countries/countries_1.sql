USE world;
SELECT languages.language, languages.percentage, countries.name
From languages, countries
WHERE language = "Slovene" and languages.country_id = countries.id
ORDER BY percentage desc;


