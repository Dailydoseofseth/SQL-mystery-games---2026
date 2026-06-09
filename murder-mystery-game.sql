-- Record your SQL detective process here!  Write down: 
--   1. The SQL queries you ran
              
SELECT id 
FROM person
WHERE address_street_name = 'Northwestern Dr';

SELECT count(*)
FROM person;

SELECT *
FROM crime_scene_report
WHERE date = 20180115
AND city = 'SQL City'
AND type = 'murder';

SELECT * FROM person LIMIT 10;

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
