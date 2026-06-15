-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

-- Case #001: The Vanishing Briefcase
-- Set in the gritty 1980s, a valuable briefcase has disappeared from the Blue Note Lounge. A witness reported that a man in a trench coat was seen fleeing the scene. Investigate the crime scene, review the list of suspects, and examine interview transcripts to reveal the culprit.

-- Objectives
-- 1.
-- Retrieve the correct crime scene details to gather the key clue.
-- 2.
-- Identify the suspect whose profile matches the witness description.
-- 3.
-- Verify the suspect using their interview transcript.

---------------------ORIGINAL ANSWER/S---------------------
SELECT * FROM crime_scene
WHERE type = 'theft';

SELECT *
FROM crime_scene
WHERE type = 'theft'
AND location = 'Blue Note Lounge';

SELECT * FROM suspects;

SELECT *
FROM suspects
WHERE attire = 'trench coat'
AND scar = 'left cheek';

SELECT *
FROM interviews
WHERE suspect_id IN (3, 183);

SELECT *
FROM suspects
WHERE id = 183;



------------ADVANCED EVIDENCE to show all corrobarating evidence--------------

SELECT 
  suspects.name,
  suspects.attire,
  suspects.scar,
  interviews.transcript
FROM suspects
JOIN interviews
ON suspects.id = interviews.suspect_id
WHERE suspects.id = 183;
