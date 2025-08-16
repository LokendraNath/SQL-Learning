-- SQL Lesson 4: Filtering and sorting Query results ==============================

-- //? List all directors of Pixar movies (alphabetically), without duplicates 
SELECT DISTINCT Director FROM movies ORDER BY Director ASC;

-- //? List the last four Pixar movies released (ordered from most recent to least)
SELECT Title FROM Movies ORDER BY Year DESC LIMIT 4

-- //? List the first five Pixar movies sorted alphabetically ✓
SELECT Title FROM Movies ORDER BY Title LIMIT 5

-- //? List the next five Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;


-- SQL Review: Simple SELECT Queries ==============================

-- //? List all the Canadian cities and their populations
SELECT City,Population FROM north_american_cities WHERE Country = "Canada";

-- //? Order all the cities in the United States by their latitude from north to south
SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;

-- //? List all the cities west of Chicago, ordered from west to east 
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- //? List the third and fourth largest cities (by population) in the United States and their population ✓
SELECT City,Population FROM north_american_cities  WHERE Country = "United States" ORDER BY Population DESC LIMIT 2 OFFSET 2