WITH check_orders AS (
    SELECT pz.name AS pizzeria_name
    FROM person p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE gender = 'male'
),
women_orders AS (
    SELECT pz.name AS pizzeria_name
    FROM person p
    JOIN person_order po ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE gender = 'female'
),
only_men_orders AS (
    SELECT pizzeria_name
    FROM check_orders
    EXCEPT
    SELECT pizzeria_name
    FROM women_orders
),
only_women_orders AS (
    SELECT pizzeria_name
    FROM women_orders
    EXCEPT
    SELECT pizzeria_name
    FROM check_orders
)
SELECT pizzeria_name
FROM only_men_orders
UNION
SELECT pizzeria_name
FROM only_women_orders
ORDER BY pizzeria_name;


-- "Papa Johns"