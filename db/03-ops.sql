--           List of relations
--  Schema |  Name   | Type  |   Owner   
-- --------+---------+-------+-----------
--  public | authors | table | tommytran
--  public | jokes   | table | tommytran

--               authors table
--  id |  name   | funny |       description       
-- ----+---------+-------+-------------------------
--   1 | Francis | t     | Oh boy, he is a teacher
--   2 | Paul    | t     | A student in march01
--   3 | Mike    | t     | A student in march01
--   4 | Grigor  | t     | A student in march29
--   5 | Zack    | t     | A student in march29
--   6 | Anton   | t     | A student in july 19
--   7 | Aphy    | t     | A student in july 19
--   8 | Alex    | t     | A student in july 19
--   9 | Dusty   | t     | A student in nov 22
--  10 | Olga    | t     | A student in nov 22
--  11 | Luciana | t     | A student in nov 22

--               jokes table
--  id |                            question                             |             answer              | rating | author_id 
-- ----+-----------------------------------------------------------------+---------------------------------+--------+-----------
--   1 | Knock knock, whos there, to who                                 | no, to whom                     |      3 |         1
--   2 | How is a bouncer at a club like a dish soap?                    | They both DETER GENTS           |      5 |         2
--   3 | What do you call a belt made out of watches?                    | A waist of time.                |      5 |         3
--   4 | Why do programmers mix hallowen and christmas                   | because OCT 31 === DEC 25       |      5 |         1
--   5 | You know you should knock on your fridge door before opening it | There might by a salad dressing |      5 |         4
--   6 | Why did the chicken cross the road?                             | Because there was a green light |   4.46 |         7
--   7 | What is small, green and goes up and down?                      | A green pea in an elevator      |   4.46 |          
--   8 | Did you hear about the monkeys who shared an Amazon account?    | They were Prime mates.          |      4 |         6
--   9 | Did you recognize that 2022 sound like 2020 too                 |                                 |      3 |        10
--  10 | What do you call a fly without wings?                           | A walk                          |      5 |         9
--  11 | What do you call a bear with no teeth?                          | A Gummy Bear                    |      4 |        11

-- Get all jokes made by students in the march cohort (under description)
-- SELECT * FROM jokes JOIN authors ON authors.id = jokes.author_id WHERE authors.description LIKE '%march%';
--  id |                            question                             |             answer              | rating | author_id | id |  name  | funny |     description      
-- ----+-----------------------------------------------------------------+---------------------------------+--------+-----------+----+--------+-------+----------------------
--   2 | How is a bouncer at a club like a dish soap?                    | They both DETER GENTS           |      5 |         2 |  2 | Paul   | t     | A student in march01
--   3 | What do you call a belt made out of watches?                    | A waist of time.                |      5 |         3 |  3 | Mike   | t     | A student in march01
--   5 | You know you should knock on your fridge door before opening it | There might by a salad dressing |      5 |         4 |  4 | Grigor | t     | A student in march29


-- Show author_id if they are in the march cohort
-- SELECT id FROM authors WHERE description LIKE '%march%';
--  id 
-- ----
--   2
--   3
--   4
--   5


-- Now show only the jokes by using the authors.id 
-- SELECT * FROM jokes WHERE author_id IN (2,3,4,5);

-- Or a nested version using both of the queries:
-- First, get me the id of the students in the march cohort (in the bracket)
-- Second, show me those jokes

-- SELECT * 
-- FROM jokes
-- WHERE
--   author_id IN (SELECT id FROM authors WHERE description LIKE '%march%')
-- ;
--  id |                            question                             |             answer              | rating | author_id 
-- ----+-----------------------------------------------------------------+---------------------------------+--------+-----------
--   2 | How is a bouncer at a club like a dish soap?                    | They both DETER GENTS           |      5 |         2
--   3 | What do you call a belt made out of watches?                    | A waist of time.                |      5 |         3
--   5 | You know you should knock on your fridge door before opening it | There might by a salad dressing |      5 |         4

-- Nested: insert or update data for a specifit data.

