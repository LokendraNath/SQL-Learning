-- SQL Lesson 11: Queries with aggregates (Pt. 2) ======================
/*
  ⚡ Difference: WHERE vs HAVING
   WHERE → rows पर filter (grouping से पहले)
   HAVING → groups पर filter (grouping के बाद)
*/

-- //? Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

-- //? Find the number of Employees of each role in the studio
SELECT role, COUNT(name) as Number_of_emp
FROM employees
GROUP BY role

-- //? Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";

-- SQL Lesson 12: Order of execution of a Query ======================
-- //? Find the number of movies each director has directed
SELECT director, COUNT(title) AS nomber_of_movie
FROM movies
GROUP BY director

-- //? Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;

-- SQL Lesson 13: Inserting rows ======================
-- //? Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies VALUES (4,'Toy Story 4', 2010, 90);

-- //? Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO boxoffice VALUES (4,8.7,350000000, 25999999);