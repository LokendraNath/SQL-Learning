-- SQL Lesson 16: Creating tables ======================================
/*

CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);

IF NOT EXISTS → अगर table पहले से मौजूद है तो error नहीं देगा।
column DataType → हर column का नाम और उसका data type fix करना पड़ता है।
TableConstraint → जैसे PRIMARY KEY, NOT NULL, UNIQUE आदि।
DEFAULT → अगर value नहीं दी गई तो default value set हो जाएगी।

-- //? Create a new table named Database with the following columns:
– Name A string (text) describing the name of the database
– Version A number (floating point) of the latest version of this database
– Download_count An integer count of the number of times this database was downloaded

This table has no constraints.
*/

CREATE TABLE database (
name TEXT,
version FLOAT,
download_count INT
);