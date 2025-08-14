USE startersql;

-- ==== Single Data Change ====
-- UPDATE users SET salary = "90000", name = "Sahil"  WHERE id=23;

-- ==== Multiple Data Change ====
-- UPDATE users SET salary = "90000", name = "Sahil", gender = 'Male', email = "sahilchakka.com"  WHERE id=23;

-- ==== Challenges ====
-- UPDATE users SET name="Anjali Verma" WHERE email="aisha@example.com";
UPDATE users SET salary = salary + 10000 WHERE salary < 60000 limit 5;

SELECT * FROM users;









