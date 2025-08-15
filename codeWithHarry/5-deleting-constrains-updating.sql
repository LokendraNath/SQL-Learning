USE startersql;

-- //! Deleting
-- DELETE FROM users WHERE salary < 55000;
-- DELETE FROM users WHERE id = 10;

SELECT * FROM users;

-- //! Constraint
-- === UNIQUE Constraint ===
alter table users add constraint unique_email  unique (email);

-- === NOT NULL Constraint ===
alter table users modify column name varchar(100) not null;

-- === CHECK Constraint ===
alter table users add constraint check_dob check (date_of_birth > '1950-01-01');

insert into users (name,email,date_of_birth) values
("Deepak Dikam",'deepak23@gmail.com','1945-01-11');
select * from users; 

-- //! Updating

-- ==== Single Data Change ====
UPDATE users SET salary = "90000", name = "Sahil"  WHERE id=23;

-- ==== Multiple Data Change ====
UPDATE users SET salary = "90000", name = "Sahil", gender = 'Male', email = "sahilchakka.com"  WHERE id=23;

-- ==== Challenges ====
UPDATE users SET name="Anjali Verma" WHERE email="aisha@example.com";
UPDATE users SET salary = salary + 10000 WHERE salary < 60000 limit 5;

SELECT * FROM users;
