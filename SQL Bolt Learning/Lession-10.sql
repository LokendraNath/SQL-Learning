-- SQL Lesson 10: Queries with aggregates (Pt. 1) ======================
-- //? Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) as max_year_emp
FROM employees

-- //? For each role, find the average number of years employed by employees in that role
SELECT role , AVG(years_employed) as avg_year_emp
FROM employees
GROUP BY role

-- //? For each role, find the average number of years employed by employees in that role
SELECT building, SUM(years_employed) as total_year_emp
FROM employees
GROUP BY building