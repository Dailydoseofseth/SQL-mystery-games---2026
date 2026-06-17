-- Record your SQL detective process here!  Write down: 
  -- 1. The SQL queries you ran
  -- 2. Any notes or insights as SQL comments
  -- 3. Your final conclusion: who did it?

-- At Miami’s prestigious Fontainebleau Hotel charity gala, the famous “Heart of Atlantis” diamond necklace suddenly disappeared from its display.

-- Objectives
-- 1.
-- Find who stole the diamond.

SELECT * 
FROM final_interviews
WHERE confession NOT LIKE '%kill%';

-------this was a good move as it showed my right at the top of the list 105 saying they did it!-----

SELECT * FROM guest WHERE id = 105;

---Mike Manning---

----but just to look around more...----

SELECT * 
FROM witness_statements w
JOIN guest g ON w.guest_id = g.id;

SELECT * 
FROM witness_statements w
JOIN guest g ON w.guest_id = g.id
WHERE g.invitation_code = 'VIP-R';

----a load of witness CLUEs-----meh...
----aha! more proof----

SELECT g.name, g.occupation, a.note
FROM attire_registry a
JOIN guest g ON a.guest_id = g.id
WHERE a.note LIKE '%navy%' AND a.note LIKE '%white tie%';

----Mike Manning shows up in QUERY---
---Boom----

