-- the 1st select statement must contain comparison signs  (<=, >=)
SELECT name, rating
FROM pizzeria
WHERE rating >= 3.5 AND rating <= 5
ORDER BY rating;
-- The answer
--     "DinoPizza"	4.2
--     "Dominos"	4.3
--     "Pizza Hut"	4.6
--     "Papa Johns"	4.9



-- the 2nd select statement must contain BETWEEN keyword

SELECT name, rating
FROM pizzeria
WHERE rating BETWEEN 3.5 AND 5
ORDER BY rating;
-- The answer
--   "DinoPizza"	4.2
--   "Dominos"	    4.3
--   "Pizza Hut"	4.6
--   "Papa Johns"	4.9
