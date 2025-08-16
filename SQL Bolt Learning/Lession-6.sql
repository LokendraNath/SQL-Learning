-- SQL Lesson 6: Multi-table queries with JOINs ==============================

-- //? Find the domestic and international sales for each movie 
SELECT Title,domestic_sales,international_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = movie_id

-- //? Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Title,domestic_sales,international_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = movie_id
WHERE international_sales > domestic_sales

-- //? List all the movies by their ratings in descending order
SELECT Title,rating
FROM movies
INNER JOIN boxoffice
ON movies.id = movie_id
ORDER BY Rating Desc