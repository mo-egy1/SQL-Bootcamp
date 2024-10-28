 select distinct p.name
 from person_order inner join person p on p.id = person_order.person_id
 order by 1;           