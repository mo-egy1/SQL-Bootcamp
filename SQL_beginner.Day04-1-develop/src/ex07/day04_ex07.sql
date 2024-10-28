-- #1
SELECT id, name FROM pizzeria WHERE name NOT IN (
    SELECT pizzeria_name FROM mv_dmitriy_visits_and_eats
);

-- 1	"Pizza Hut"
-- 2	"Dominos"
-- 3	"DoDo Pizza"
-- 5	"Best Pizza"
-- 6	"DinoPizza"

-----------------------------------------------------------------
/*
-- #2
SELECT id FROM person WHERE name = 'Dmitriy';
SELECT id FROM pizzeria WHERE name = 'Pizza Hut';
INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT COALESCE(MAX(id), 0) + 1 FROM person_visits), 9, 1, '2022-01-08');  */



-- #3
-- REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- The output: 
-- REFRESH MATERIALIZED VIEW
-- Query returned successfully in 757 msec.

-------------------------------------------------------------------------------

-- REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- REFRESH MATERIALIZED VIEW
-- Query returned successfully in 604 msec.

--------------------------------------------------------------------

-- #4
	-- To check
/*SELECT *
FROM mv_dmitriy_visits_and_eats*/