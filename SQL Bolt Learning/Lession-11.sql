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