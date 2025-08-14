USE startersql;

-- === UNIQUE Constraint ===
-- alter table users add constraint unique_email  unique (email);

-- === NOT NULL Constraint ===
-- alter table users modify column name varchar(100) not null;

-- === CHECK Constraint ===
-- alter table users add constraint check_dob check (date_of_birth > '1950-01-01');

insert into users (name,email,date_of_birth) values
("Deepak Dikam",'deepak23@gmail.com','1945-01-11');
select * from users; 