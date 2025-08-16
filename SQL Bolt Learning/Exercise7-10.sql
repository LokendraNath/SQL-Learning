-- SQL Lesson 7: OUTER JOINs ==============================

-- //? Find the list of all buildings that have employees ✓
SELECT DISTINCT building FROM employees;

-- //? Find the list of all buildings and their capacity
SELECT building_name,capacity FROM Buildings;

-- //? List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

-- SQL Lesson 8: A short note on NULLs ==============================
-- //? Find the name and role of all employees who have not been assigned to a building 
SELECT name,role 
FROM employees
WHERE building IS NULL

-- //? Find the names of the buildings that hold no employees 
SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;

-- SQL Lesson 9: Queries with expressions ==============================
-- //? List all movies and their combined sales in millions of dollars
SELECT title , 	(domestic_sales + international_sales) / 1000000 AS combined_sales_inMillion
FROM movies
    INNER JOIN boxoffice
    ON movies.id = movie_id

-- //? List all movies and their ratings in percent
SELECT title,rating * 10 AS percent
FROM movies
    INNER JOIN boxoffice
    ON movies.id = movie_id

-- //? List all movies that were released on even number years
SELECT title,year AS even_year
FROM movies
WHERE year % 2 = 0