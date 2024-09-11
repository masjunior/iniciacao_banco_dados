SELECT * FROM equipment
WHERE description ->> 'brand' = 'Dell';

SELECT * FROM equipment
WHERE description ->> 'brand' = 'HP'
  AND department_id = 2;

SELECT description ->> 'brand' AS brand, COUNT(*) AS equipment_count
FROM equipment
GROUP BY brand;