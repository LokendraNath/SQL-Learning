/*
friends_of_pickles

id	    name	gender	species	height_cm
1	Dave 	male	human	   180
2	Mary  female	human  160
3	Fry	  man     cat	    30
4	Leela	female	cat   	25
5	Odie	male	  dog	    40
6	Jumpy	male	  dog    	35
7	Sneak male	  dog	    55
*/


-- (Lesson 7: OR)
SELECT * FROM friends_of_pickles WHERE height_cm > 25 OR species = 'cat';

-- (Lesson 9: DISTINCT) => By putting DISTINCT after SELECT, you do not return duplicates.
SELECT DISTINCT gender, species FROM friends_of_pickles WHERE height_cm < 100;

-- (Lesson 10: ORDER BY)
SELECT * FROM friends_of_pickles ORDER BY height_cm DESC

-- (Lesson 11: LIMIT # of returned rows)
SELECT * FROM friends_of_pickles ORDER BY height_cm DESC LIMIT 1

-- (Lesson 12: COUNT(*)) => table is to check the number of rows
SELECT COUNT(*) FROM friends_of_pickles;

-- (Lesson 13: COUNT(*) ... WHERE) => return the number of rows that matches the WHERE clause.
SELECT COUNT(*) FROM friends_of_pickles WHERE species = 'dog'


/* 
family_members

id	name  	species	num_books_read	num_legs
1	  Dave	   human      	200	          2
2	  Mary  	 human       	180         	2
3	  Pickles	 dog          0	            4
*/

-- (Lesson 14: SUM) => order to find the sum of a given value. ==========================================
SELECT SUM(num_books_read) FROM family_members --> 380

-- (Lesson 15: AVG) => order to find the average of a given value. ==========================================
SELECT AVG(num_books_read) FROM family_members --> 126.66666666666667

-- (Lesson 16: MAX and MIN) => MAX and MIN to find the maximum or minimum value of a column. ==========================================
SELECT MAX(num_books_read) FROM family_members; --> 200

-- (Lesson 17: GROUP BY) => You can use aggregate functions such as COUNT, SUM, AVG, MAX, and MIN with the GROUP BY clause. ==========================================
SELECT MAX(height_cm), species FROM friends_of_pickles GROUP BY species;

-- (Lesson 18: Nested queries) => In SQL, you can put a SQL query inside another SQL query. ==========================================
SELECT * FROM family_members WHERE num_books_read = (SELECT MAX(num_books_read) FROM family_members)

-- (Lesson 19: NULL) ==========================================
SELECT * FROM family_members WHERE favorite_book IS NOT NULL

-- (Lesson 20: Date) ==========================================
SELECT * FROM celebs_born WHERE birthdate > '1980-09-01'

-- (Lesson 21: Inner joins) => Different parts of information can be stored in different tables, and in order to put them together, we use INNER JOIN ... ON (https://www.sqlteaching.com/#!joins) ==========================================

-- //? Can you use an inner join to pair each character name with the actor who plays them? Select the columns: character.name, character_actor.actor_name

SELECT character.name, character_actor.actor_name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id

-- (Lesson 22: Multiple joins) ==========================================
-- //? Can you use two joins to pair each character name with the actor who plays them? Select the columns: character.name, actor.name

SELECT character.name, actor.name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id
INNER JOIN actor
ON character_actor.actor_id = actor.id;

-- (Lesson 23: Joins with WHERE) =========================
-- //? Can you return a list of characters and TV shows that are not named "Willow Rosenberg" and not in the show "How I Met Your Mother"?

SELECT character.name , tv_show.name
FROM character
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id WHERE character.name != 'Willow Rosenberg' AND tv_show.name != 'How I Met Your Mother'

-- (Lesson 24: Left joins) ==========================================
/*
- LEFT JOIN SQL में एक तरह का join है जो left table के सभी rows को वापस लौटाता है, चाहे right table में matching rows हों या नहीं।

LEFT JOIN होने की वजह से:
  सभी कैरेक्टर आएंगे, चाहे उनके लिए character_tv_show में कोई entry हो या नहीं।
  अगर कोई entry नहीं है, तो character_tv_show के कॉलम में NULL आएगा।
*/

SELECT character.name, tv_show.name
FROM character
LEFT JOIN character_tv_show
ON character.id = character_tv_show.character_id
LEFT JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id;

-- (Lesson 25: Table alias) ==========================================
-- //? Can you use left joins to match character names with the actors that play them, and use aliases to make the query shorter? The aliases for character, character_actor, and actor should be c, ca, and a.
SELECT c.name, a.name
FROM character AS c
LEFT JOIN character_actor AS ca
ON c.id = ca.character_id
LEFT JOIN actor AS a
ON ca.actor_id = a.id

-- (Lesson 26: Column alias) ==========================================
-- //? Can you use left joins to match character names with the actors that play them, and use aliases to call the two columns returned character and actor?
SELECT character.name AS character, actor.name AS actor
FROM character
LEFT JOIN character_actor
ON character.id = character_actor.character_id
LEFT JOIN actor
ON character_actor.actor_id = actor.id

-- (Lesson 27: Self joins) ==========================================
-- //? Can you run a query that returns the name of an employee and the name of their boss? Use column aliases to make the columns employee_name and boss_name.

SELECT e1.name AS employee_name,
       e2.name AS boss_name
FROM employees AS e1
INNER JOIN employees AS e2
  ON e1.boss_id = e2.id;

-- (Lesson 28: LIKE) ==========================================
/*
In SQL, you can use the LIKE command in order to search through text-based values. With LIKE, there are two special characters: % and _

The percent sign (%) represents zero, one, or multiple characters.
The underscore (_) represents one character.

For example, LIKE "SUPER _" would match values such as "SUPER 1", "SUPER A", and "SUPER Z".
LIKE "SUPER%" would match any value where SUPER is at the beginning, such as "SUPER CAT", "SUPER 123", or even "SUPER" by itself.
*/

-- //? Can you run a query that returns "Robot" followed by a year between 2000 and 2099? (So 2015 is a valid value at the end, but 2123 is not.)

SELECT * FROM robots WHERE name LIKE "%Robot 20__"

-- (Lesson 29: CASE) ==========================================
-- //? Can you return the results with a column named sound that returns "talk" for humans, "bark" for dogs, and "meow" for cats?

SELECT * , 
CASE 
    WHEN species = 'human' THEN 'talk' 
    WHEN species = 'dog' THEN 'bark' 
    WHEN species = 'cat' THEN 'meow' 
END AS sound 
FROM friends_of_pickles;

-- (Lesson 30: SUBSTR) ==========================================
/*
SUBSTR is used in this format: SUBSTR(column_name, index, number_of_characters)

- SUBSTR (ya kuch databases me SUBSTRING) SQL ka ek string function hai jo ek text ka specific hissa (substring) nikalta hai.

Here are some examples:
SUBSTR(name, 1, 5) is the first 5 characters of the name.
SUBSTR(name, -4) is the last 4 characters of the name.
*/
-- //? Can you return all of the robots that are located in NY?
SELECT * FROM robots WHERE SUBSTR(location,-2) = 'NY'

-- (Lesson 31: COALESCE) ==========================================
-- //? Suppose that a fighter's tank could count as a weapon, and it would take precedence over the gun and the sword. Could you find each fighter's weapon in that scenario?
SELECT name,
       COALESCE(tank, gun, sword) AS weapon
FROM fighters;