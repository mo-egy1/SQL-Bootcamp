SELECT name
FROM v_persons_female

UNION

SELECT name
FROM v_persons_male

ORDER BY name;


-- "Andrey"
-- "Anna"
-- "Denis"
-- "Dmitriy"
-- "Elvira"
-- "Irina"
-- "Kate"
-- "Nataly"
-- "Peter"