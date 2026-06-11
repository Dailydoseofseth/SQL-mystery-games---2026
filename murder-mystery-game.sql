-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
              
SELECT * FROM crime_scene_report 
WHERE type = 'murder' 
AND city = 'SQL City';

SELECT *
FROM crime_scene_report
WHERE date = 20180115
AND city = 'SQL City'
AND type = 'murder';

SELECT * FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC;

SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave'
AND name LIKE 'Annabel%';

SELECT person.name, interview.transcript
FROM person JOIN interview
ON person.id = interview.person_id
WHERE person.id = 14887 OR person.id = 16371;


...
-- THE FIRST 48 -- clock's-a-tickin'....................... >>>

SELECT *
FROM get_fit_now_member
WHERE id LIKE '48Z%'
AND membership_status = 'gold';

SELECT *
FROM person
WHERE id = 28819;

SELECT *
FROM person
WHERE id = 67318;

SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';

-----
INSERT INTO solution VALUES (1, 'Jeremy Bowers');

SELECT value FROM solution;

SELECT *
FROM person
WHERE name = 'Jeremy Bowers';

SELECT *
FROM interview
WHERE person_id = 67318;





-- SELECT DISTINCT city 
-- FROM crime_scene_report 
-- WHERE city LIKE 'I%';

-- SELECT DISTINCT city 
-- FROM crime_scene_report 
-- WHERE city BETWEEN 'W%' AND 'Z%';

-- SELECT max(age) FROM drivers_license;

-- SELECT * FROM drivers_license ORDER BY age ASC LIMIT 10


--   2. Any notes or insights as SQL comments
  -- first witness is: Mortie Schapiro
  -- 
--   3. Your final conclusion: who did it?

-- Using these SQL clauses will help you solve the mystery: 
--    SELECT, FROM, WHERE, AND, OR, ORDER BY, LIMIT, LIKE, DISTINCT, BETWEEN, AS

-- writing a comment like this

-- selecting all columns from the crime scene report
SELECT * FROM crime_scene_report;
