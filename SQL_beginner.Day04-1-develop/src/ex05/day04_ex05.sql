CREATE VIEW v_price_with_discount AS
SELECT
    p.name,
    m.pizza_name,
    m.price,
    CAST(m.price - m.price * 0.1 AS INTEGER) AS discount_price
FROM
    person p
JOIN
    person_order po ON p.id = po.person_id
JOIN
    menu m ON po.menu_id = m.id
ORDER BY
    p.name,
    m.pizza_name;

--CREATE VIEW
--Query returned successfully in 49 msec.


------------------------------------------ 

-- To check 
-- SELECT * FROM v_price_with_discount;


--  "Andrey"	"cheese pizza"	800	720
--  "Andrey"	"mushroom pizza"	1100	990
--    "Anna"	"cheese pizza"	900	810
--    "Anna"	"pepperoni pizza"	1200	1080
--    "Denis"	"cheese pizza"	700	630
--    "Denis"	"pepperoni pizza"	800	720
--    "Denis"	"pepperoni pizza"	800	720
--    "Denis"	"sausage pizza"	1000	900
--    "Denis"	"sicilian pizza"	900	810
--    "Denis"	"sicilian pizza"	900	810
--    "Denis"	"sicilian pizza"	900	810
--    "Denis"	"sicilian pizza"	900	810
--    "Denis"	"sicilian pizza"	900	810
--    "Denis"	"supreme pizza"	850	765
--     "Dmitriy"	"supreme pizza"	850	765
--    "Elvira"	"pepperoni pizza"	800	720
--    "Elvira"	"sausage pizza"	1000	900
--    "Irina"	"mushroom pizza"	950	855
--    "Irina"	"sicilian pizza"	900	810
--    "Irina"	"sicilian pizza"	900	810
--    "Irina"	"sicilian pizza"	900	810
--    "Irina"	"sicilian pizza"	900	810
--    "Irina"	"sicilian pizza"	900	810
--    "Kate"	"cheese pizza"	700	630
--    "Nataly"	"cheese pizza"	800	720
--    "Nataly"	"pepperoni pizza"	1000	900
--    "Peter"	"mushroom pizza"	1100	990
--    "Peter"	"sausage pizza"	1200	1080
--    "Peter"	"supreme pizza"	1200	1080