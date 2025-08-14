USE startersql;

 -- ===== Data Retrieval with Filtering =====
-- SELECT * FROM users WHERE gender="Female";
-- SELECT * FROM users WHERE date_of_birth<'1997-03-25';
-- SELECT * FROM users WHERE salary < 80000;

 -- ===== BETWEEN =====
-- SELECT * FROM users WHERE date_of_birth BETWEEN '1995-01-05' and '1996-06-02';

 -- ===== IN =====
 -- SELECT * FROM users WHERE gender in ('Male', 'Female')
 
-- ===== AND =====
-- SELECT * FROM users WHERE gender="Male" AND salary>'60000'
  
-- ===== OR =====
-- SELECT * FROM users WHERE gender="Female" OR salary>'70000';

-- ===== Order By =====
SELECT * FROM users WHERE gender="Female" ORDER BY date_of_birth Decs;

-- ===== Limit =====
-- SELECT * FROM users WHERE gender="Female" LIMIT 3
  
  
  
  

