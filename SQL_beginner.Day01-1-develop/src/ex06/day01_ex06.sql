SELECT order_date             
	AS action_date,
       (SELECT NAME
        FROM person
        WHERE person.id = person_order.person_id) as person_name
FROM person_order
INTERSECT
SELECT visit_date,
       (SELECT NAME
        FROM person
        WHERE person.id = person_visits.person_id)
FROM person_visits
ORDER BY action_date ASC, person_name DESC;

--  "2022-01-01"	"Irina"
--  "2022-01-01"	"Anna"
--  "2022-01-01"	"Andrey"
--  "2022-01-03"	"Peter"
--  "2022-01-04"	"Kate"
--  "2022-01-05"	"Peter"
--  "2022-01-06"	"Nataly"
--  "2022-01-07"	"Nataly"
--  "2022-01-07"	"Denis"
--  "2022-01-08"	"Denis"
--  "2022-01-09"	"Elvira"
--  "2022-01-09"	"Dmitriy"
--  "2022-01-10"	"Dmitriy"