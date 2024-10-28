SELECT pizzeria.name,
       pizzeria.rating
FROM pizzeria
         LEFT JOIN person_visits pv ON pizzeria.id = pv.pizzeria_id
WHERE pv.id IS NULL;


--  "DoDo Pizza"	3.2