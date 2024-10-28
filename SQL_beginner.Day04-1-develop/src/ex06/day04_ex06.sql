CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT
    pz.name AS pizzeria_name
FROM
    person p
JOIN
    person_visits pv ON p.id = pv.person_id
JOIN
    menu m ON pv.pizzeria_id = m.pizzeria_id
JOIN
    pizzeria pz ON pz.id = pv.pizzeria_id
WHERE
    p.name = 'Dmitriy'
    AND pv.visit_date = '2022-01-08'
    AND m.price < 800
ORDER BY
    pz.name;

-- SELECT 1
-- Query returned successfully in 904 msec. 

------------------------------------------------------------------------------------------

-- To check 

-- SELECT * FROM mv_dmitriy_visits_and_eats;

-- The answer

-- "Papa Johns"