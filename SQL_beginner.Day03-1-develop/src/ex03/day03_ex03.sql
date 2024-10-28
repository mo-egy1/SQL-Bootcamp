WITH female_table AS (
    SELECT
        pizzeria.name AS pizzeria_name,
        COUNT(*) AS count_female
    FROM
        pizzeria
    JOIN
        person_visits ON person_visits.pizzeria_id = pizzeria.id
    JOIN
        person ON person.id = person_visits.person_id
    WHERE
        gender = 'female'
    GROUP BY
        pizzeria.name
),
male_table AS (
    SELECT
        pizzeria.name AS pizzeria_name,
        COUNT(*) AS count_male
    FROM
        pizzeria
    JOIN
        person_visits ON person_visits.pizzeria_id = pizzeria.id
    JOIN
        person ON person.id = person_visits.person_id
    WHERE
        gender = 'male'
    GROUP BY
        pizzeria.name
),
combined AS (
    SELECT
        COALESCE(female_table.pizzeria_name, male_table.pizzeria_name) AS pizzeria_name,
        COALESCE(count_female, 0) AS count_female,
        COALESCE(count_male, 0) AS count_male
    FROM
        female_table
    FULL JOIN
        male_table ON female_table.pizzeria_name = male_table.pizzeria_name
)
SELECT
    pizzeria_name
FROM
    combined
WHERE
    count_female > count_male OR count_male > count_female
ORDER BY
    pizzeria_name;

--   "Best Pizza"
--   "Dominos"
--   "Papa Johns"