SELECT 
    id AS object_id, 
    pizza_name AS object_name
FROM 
    menu
UNION ALL
SELECT 
    id AS object_id, 
    name AS object_name
FROM 
    person
ORDER BY 
    object_id, 
    object_name;

-- The Answer

-- 1	"Anna"
-- 1	"cheese pizza"
-- 2	"Andrey"
-- 2	"pepperoni pizza"
-- 3	"Kate"
-- 3	"sausage pizza"
-- 4	"Denis"
-- 4	"supreme pizza"
-- 5	"cheese pizza"
-- 5	"Elvira"
-- 6	"Irina"
-- 6	"pepperoni pizza"
-- 7	"Peter"
-- 7	"sausage pizza"
-- 8	"cheese pizza"
-- 8	"Nataly"
-- 9	"Dmitriy"
-- 9	"mushroom pizza"
-- 10	"cheese pizza"
-- 11	"supreme pizza"
-- 12	"cheese pizza"
-- 13	"mushroom pizza"
-- 14	"pepperoni pizza"
-- 15	"sausage pizza"
-- 16	"cheese pizza"
-- 17	"pepperoni pizza"
-- 18	"supreme pizza"