WITH visited_pizzerias AS (
    SELECT DISTINCT pz.name AS pizzeria_name
    FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
    WHERE p.name = 'Andrey'
),
ordered_pizzerias AS (
    SELECT DISTINCT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON po.person_id = p.id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    WHERE p.name = 'Andrey'
)
SELECT pizzeria_name
FROM visited_pizzerias
EXCEPT
SELECT pizzeria_name
FROM ordered_pizzerias
ORDER BY pizzeria_name;


--    "Pizza Hut"