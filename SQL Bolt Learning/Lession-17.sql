-- SQL Lesson 17: Altering tables ======================================
-- //? Add a column named Aspect_ratio with a FLOAT data type to store the aspect-ratio each movie was released in.
ALTER TABLE Movies
  ADD COLUMN Aspect_ratio FLOAT DEFAULT 2.39;

-- //? Add another column named Language with a TEXT data type to store the language that the movie was released in. Ensure that the default for this language is English.
ALTER TABLE Movies
ADD column Language TEXT DEFAULT "English"

-- SQL Lesson 18: Dropping tables ======================================
-- //? We've sadly reached the end of our lessons, lets clean up by removing the Movies table
DROP TABLE IF EXISTS movies

-- //? And drop the BoxOffice table as well
DROP TABLE IF EXISTS BoxOffice