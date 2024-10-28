with date_chack AS 
	(SELECT visit_date
	 FROM person_visits
	WHERE person_id = 1 OR person_id = 2)
SELECT missing_date::date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') missing_date
LEFT JOIN 
	date_chack  
	ON missing_date = date_chack.visit_date
	WHERE visit_date IS NULL
	ORDER BY missing_date;

--  "2022-01-03"
--  "2022-01-04"
--  "2022-01-05"
--  "2022-01-06"
--  "2022-01-07"
--  "2022-01-08"
--  "2022-01-09"
--  "2022-01-10"