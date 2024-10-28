CREATE TABLE city_paths (
    point1 CHAR(1),
    point2 CHAR(1),
    cost INT
);

-- Insert the data
INSERT INTO city_paths (point1, point2, cost) VALUES
('a', 'b', 10),
('b', 'a', 10),
('a', 'c', 15),
('c', 'a', 15),
('a', 'd', 20),
('d', 'a', 20),
('b', 'c', 35),
('c', 'b', 35),
('b', 'd', 25),
('d', 'b', 25),
('c', 'd', 30),
('d', 'c', 30);

WITH RECURSIVE roads AS (
  SELECT CONCAT(point1) as res, point1, point2, cost, 1 AS i
  FROM city_paths
  WHERE point1 = 'a'
  UNION
  SELECT CONCAT(roads.res ||','|| roads.point2) AS res,
    roads.point1,
    city_paths.point2,
    roads.cost + city_paths.cost as cost,
    i+1
  FROM roads
  JOIN city_paths
  ON city_paths.point1 = roads.point2
  WHERE res NOT LIKE CONCAT('%'|| city_paths.point1 ||'%')),
counter AS (
  SELECT CONCAT('{' || res || ',' || point2 || '}') as res ,point2, cost, i
  FROM roads
  WHERE point2 = 'a' 
),
res AS (
  SELECT cost total_cost, res tour FROM counter
  WHERE i = (SELECT MAX(i) FROM counter)
  )


SELECT total_cost, tour 
FROM res
WHERE total_cost = (SELECT MIN(total_cost) FROM res)
ORDER By total_cost, tour;
