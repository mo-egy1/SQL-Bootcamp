(SELECT  p.name, COUNT(*) AS "count", 'visit' AS action_type
FROM person_visits inner join pizzeria p on p.id = person_visits.pizzeria_id
group by p.name
order by 2 desc
limit 3)
union
(SELECT  p.name, COUNT(*) AS "count", 'order' AS action_type
from person_order inner join menu m on person_order.menu_id = m.id
    inner join pizzeria p on m.pizzeria_id = p.id
group by p.name
order by 2 desc
limit 3)
order by 3,2 desc 