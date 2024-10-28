SELECT 
    id,
    name,
    CASE 
        WHEN age >= 10 AND age <= 20 THEN 'interval #1'
        WHEN age > 20 AND age < 24 THEN 'interval #2'
        ELSE 'interval #3'
    END AS interval_info
FROM 
    person
ORDER BY 
    interval_info ASC;

--     1	"Anna"	"interval #1"
--     4	"Denis"	"interval #1"
--     9	"Dmitriy"	"interval #1"
--     6	"Irina"	"interval #2"
--     2	"Andrey"	"interval #2"
--     8	"Nataly"	"interval #3"
--     5	"Elvira"	"interval #3"
--     7	"Peter"	"interval #3"
--     3	"Kate"	"interval #3"