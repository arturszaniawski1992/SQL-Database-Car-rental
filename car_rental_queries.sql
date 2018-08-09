-- a
SELECT name, surname, NOW() as actual_time, dateOfBirth,
YEAR(NOW())-YEAR(dateOfBirth) - (DATE_FORMAT(NOW(), '%m%d') < DATE_FORMAT(dateOfBirth, '%m%d')) as age
FROM employee WHERE (YEAR(NOW())-YEAR(dateOfBirth) - (DATE_FORMAT(NOW(), '%m%d') < DATE_FORMAT(dateOfBirth, '%m%d'))>25); 
-- b
SELECT id, name, surname FROM employee WHERE length(surname)>5;

-- c
SELECT id, name, surname FROM employee WHERE SUBSTR(surname, 2, 1) = 'F';

-- d
SELECT id, brand, model, MAX(mileage) AS max_mileage FROM car;

-- e
SELECT  COUNT(*) AS numbers_of_cars FROM car WHERE mileage BETWEEN 200000 AND 300000;

-- f
SELECT e.id, e.name, e.surname, p.position 
FROM employee e JOIN position_employee p ON e.position_employee=p.id 
WHERE p.position='manager';

-- g1
SELECT  c.name, c.surname, COUNT(*) count 
FROM customer c JOIN hire h ON c.id=h.customer_id 
GROUP BY c.id HAVING count=(SELECT COUNT(*) from customer cu 
JOIN hire hi ON cu.id=hi.customer_id 
GROUP BY cu.id ORDER BY COUNT(*) DESC LIMIT 1);

-- g2
SELECT  extract(month from h.date_of_rent) "Month", COUNT(*) count_of_rentals 
FROM  hire h JOIN car c ON c.id=h.car_id 
GROUP BY month ORDER BY month;

-- g3
SELECT v.count, v.month, v.year, v.customer_id FROM amount_of_rentals v
JOIN (
SELECT MAX(count) maxx, customer_id
FROM amount_of_rentals v
GROUP BY customer_id
) v2
ON v.customer_id = v2.customer_id
AND v.count = v2.maxx;

-- g4 per all customers
SELECT MONTH(date_of_rent) month, round(COUNT(*)/(SELECT COUNT(DISTINCT customer_id) FROM hire),2) 
AS average 
FROM hire GROUP BY month ASC;

-- h 
SELECT c.name,c.surname, COUNT(DISTINCT h.car_id) rented_cars 
FROM customer c LEFT JOIN  hire h ON h.customer_id=c.id 
GROUP BY h.customer_id ORDER BY rented_cars desc LIMIT 3; 

-- i
SELECT c.brand, COUNT(*) count 
FROM car c JOIN hire h ON c.id=h.car_id 
GROUP BY c.brand 
HAVING count=(SELECT COUNT(*) count FROM hire hi  JOIN car ca ON ca.id=hi.car_id 
GROUP BY ca.brand 
ORDER BY count DESC LIMIT 1);

-- j
SELECT c.id, c.name, c.surname, SUM(price) sum 
FROM customer c JOIN hire h ON c.id=h.customer_id
WHERE year(h.date_of_rent)=year(current_date()) 
GROUP BY h.customer_id ORDER BY sum DESC LIMIT 1;

-- k1
SELECT c.id, c.name, c.surname 
FROM customer c JOIN hire h ON c.id=h.customer_id 
WHERE h.date_of_rent 
BETWEEN '2017-10-05' AND '2017-10-25'AND h.car_id=10;


SELECT id, name, surname FROM customer 
JOIN (SELECT customer_id FROM hire 
WHERE (date_of_return >= '2018-10-10' AND date_of_rent <='2018-10-25') 
AND car_id = 9) 
AS T ON id = customer_id; ;


-- l
UPDATE car SET color = 'black' WHERE car.id=1;

-- m
SELECT c.id, c.name, c.surname, COUNT(*) count 
FROM customer c JOIN hire h ON c.id=h.customer_id 
WHERE h.rental_rent != h.rental_return 
GROUP BY h.customer_id HAVING count=(SELECT COUNT(*) from customer cu 
JOIN hire hi ON cu.id=hi.customer_id 
GROUP BY cu.id ORDER BY COUNT(*) DESC LIMIT 1);

-- n
SELECT substring_index(mail, '@', -1) domain, COUNT(*) email_count 
FROM customer 
GROUP BY substring_index(mail, '@', -1) ORDER BY email_count DESC LIMIT 1;

-- o
SELECT  c.brand, c.model FROM car c 
WHERE EXISTS (SELECT k.employee_id FROM keeper k 
WHERE c.id=k.car_id HAVING COUNT(DISTINCT k.employee_id) >= 2);

-- p
SELECT e.id, e.name, e.surname FROM employee e WHERE e.id 
NOT IN (SELECT k.employee_id FROM keeper k);











 






