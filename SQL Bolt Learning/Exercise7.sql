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