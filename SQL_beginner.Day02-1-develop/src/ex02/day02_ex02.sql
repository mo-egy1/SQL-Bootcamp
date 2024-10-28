SELECT 
    COALESCE(p.name, '-') AS person_name,
    COALESCE(TO_CHAR(v.visit_date, 'YYYY-MM-DD'), 'null') AS visit_date,
    COALESCE(pz.name, '-') AS pizzeria_name
FROM 
    (SELECT DISTINCT id, name FROM person) p
FULL OUTER JOIN 
    (SELECT person_id, pizzeria_id, visit_date
     FROM person_visits
     WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') v 
ON p.id = v.person_id
FULL OUTER JOIN 
    (SELECT DISTINCT id, name FROM pizzeria) pz 
ON pz.id = v.pizzeria_id
ORDER BY 
    person_name, visit_date, pizzeria_name;



--   "-"	"null"	"DinoPizza"
--   "-"	"null"	"DoDo Pizza"
--   "Andrey"	"2022-01-01"	"Dominos"
--   "Andrey"	"2022-01-02"	"Pizza Hut"
--    "Anna"	"2022-01-01"	"Pizza Hut"
--    "Denis"	"null"	"-"
--     "Dmitriy"	"null"	"-"
--      "Elvira"	"null"	"-"
--    "Irina"	"2022-01-01"	"Papa Johns"
--    "Kate"	"2022-01-03"	"Best Pizza"
--   "Nataly"	"null"	"-"
--   "Peter"	"2022-01-03"	"Pizza Hut"