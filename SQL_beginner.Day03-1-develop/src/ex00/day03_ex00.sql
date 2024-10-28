SELECT 
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name,
    pv.visit_date
FROM 
    person p
JOIN 
    person_visits pv ON p.id = pv.person_id
JOIN 
    pizzeria pz ON pz.id = pv.pizzeria_id
JOIN 
    menu m ON pz.id = m.pizzeria_id
WHERE 
    p.name = 'Kate'
    AND m.price BETWEEN 800 AND 1000
ORDER BY 
    m.pizza_name, 
    m.price, 
    pz.name;



--       "cheese pizza"	    950	    "DinoPizza"	    "2022-01-04"
--       "pepperoni pizza"	800	    "Best Pizza"	"2022-01-03"
--       "pepperoni pizza"	800	    "DinoPizza"	    "2022-01-04"
--       "sausage pizza"	1000	"DinoPizza"	    "2022-01-04"
--       "supreme pizza"	850	    "Best Pizza"	"2022-01-03"
