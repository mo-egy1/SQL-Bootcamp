WITH all_dates AS (
    SELECT '2022-01-01'::date AS visit_date
    UNION ALL
    SELECT '2022-01-02'::date
    UNION ALL
    SELECT '2022-01-03'::date
    UNION ALL
    SELECT '2022-01-04'::date
    UNION ALL
    SELECT '2022-01-05'::date
    UNION ALL
    SELECT '2022-01-06'::date
    UNION ALL
    SELECT '2022-01-07'::date
    UNION ALL
    SELECT '2022-01-08'::date
    UNION ALL
    SELECT '2022-01-09'::date
    UNION ALL
    SELECT '2022-01-10'::date
),
-- Find all visits by persons with identifiers 1 or 2
person_visits AS (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
)
-- Select dates from all_dates that are not in person_visits
SELECT ad.visit_date AS missing_date
FROM all_dates ad
LEFT JOIN person_visits pv ON ad.visit_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY ad.visit_date;

--  "2022-01-03"
--  "2022-01-04"
--  "2022-01-05"
--  "2022-01-06"
--  "2022-01-07"
--  "2022-01-08"
--  "2022-01-09"
--  "2022-01-10"