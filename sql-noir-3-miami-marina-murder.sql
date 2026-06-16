-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

-- Case #003: The Miami Marina Murder
-- A body was found floating near the docks of Coral Bay Marina in the early hours of August 14, 1986. Your job, detective, is to find the murderer and bring them to justice. This case might require the use of JOINs, wildcard searches, and logical deduction. Get to work, detective.

-- Objectives
-- 1.
-- Find the murderer. ( Start by finding the crime scene and go from there )


---------original-------------
SELECT *
FROM crime_scene
WHERE date = 19860814
AND location = 'Coral Bay Marina';

SELECT * 
FROM person 
WHERE address 
LIKE '%Ocean Drive%';

SELECT * 
FROM person 
WHERE name LIKE 
'%ul %ez';

-- incorrect id --
SELECT * 
FROM interviews
WHERE id IN (101, 102);

-- correct id search --
SELECT * 
FROM interviews
JOIN  hotel_checkins
WHERE person_id IN (101, 102);

SELECT * FROM hotel_checkins
WHERE hotel_name LIKE '%Sunset%'
AND check_in_date = 19860813;

SELECT p.name, p.alias, h.hotel_name, h.check_in_date, s.suspicious_activity
FROM surveillance_records s
JOIN person p ON s.person_id = p.id
JOIN hotel_checkins h ON s.hotel_checkin_id = h.id
WHERE s.person_id IN (101, 102);

-- Carlos Mendez	Los Ojos	Coastal View Hotel	19860813	Asked for room service menu
-- Raul Gutierrez	The Cobra	Sunset Shore Hotel	19860813	NULL 
-- (first name ends with %ul and last name ends with %ez)

-- hmm. neither.

SELECT p.name, p.alias, h.hotel_name, h.check_in_date, s.suspicious_activity
FROM surveillance_records s
JOIN hotel_checkins h ON s.hotel_checkin_id = h.id
JOIN person p ON h.person_id = p.id
WHERE h.hotel_name LIKE '%Sunset%'
AND h.check_in_date = 19860813;

--------------------

SELECT p.name, c.confession
FROM confessions c
JOIN person p ON c.person_id = p.id
WHERE p.name IN ('Gregory Stewart', 'Jacob Campbell');

SELECT p.name, i.transcript
FROM interviews i
JOIN person p ON i.person_id = p.id
WHERE p.name IN ('Gregory Stewart', 'Jacob Campbell');

------hmm---manual scan for suspicious activity...-------
SELECT p.name, p.alias, s.suspicious_activity
FROM surveillance_records s
JOIN person p ON s.person_id = p.id
WHERE s.suspicious_activity LIKE '%late%'
OR s.suspicious_activity LIKE '%after hours%'
OR s.suspicious_activity LIKE '%3 AM%'
OR s.suspicious_activity LIKE '%night%';


SELECT p.name, c.confession
FROM confessions c
JOIN person p ON c.person_id = p.id
WHERE p.name IN ('James Wilson', 'Thomas Brown');

SELECT p.name, i.transcript
FROM interviews i
JOIN person p ON i.person_id = p.id
WHERE p.name IN ('James Wilson', 'Thomas Brown');
