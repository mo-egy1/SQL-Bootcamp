--session 1
START TRANSACTION;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select * from pizzeria where name  = 'Pizza Hut';
select * from pizzeria where name  = 'Pizza Hut';
COMMIT;
select * from pizzeria where name  = 'Pizza Hut';

--session 2
START TRANSACTION;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE pizzeria SET rating = 3.0 WHERE id = 1;
COMMIT;
select * from pizzeria where name  = 'Pizza Hut';