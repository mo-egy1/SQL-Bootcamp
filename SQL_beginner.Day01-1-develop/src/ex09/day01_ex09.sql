SELECT name
FROM pizzeria
WHERE id NOT IN (
    SELECT pizzeria_id
    FROM person_visits
);


---   using IN
--   The Answer: 
--  "DoDo Pizza"
----------------------------------------------------------

SELECT NAME
FROM pizzeria
WHERE NOT EXISTS(SELECT pizzeria_id
                 FROM person_visits
                 WHERE pizzeria_id = pizzeria.id);

---  using EXISTS 
--  The Answer 
-- "DoDo Pizza"