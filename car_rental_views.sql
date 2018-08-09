CREATE OR REPLACE VIEW  clients_rental AS (
SELECT c.id, c.name, c.surname, h.date_of_rent, h.date_of_return, car.brand 
FROM customer c 
LEFT JOIN hire h ON c.id=h.customer_id
LEFT JOIN  car  ON h.car_id=car.id);


CREATE OR REPLACE VIEW  amount_of_rentals AS (
SELECT customer_id, year(h.date_of_rent) year, month(h.date_of_rent) month, COUNT(*) count
FROM hire h GROUP BY customer_id, year, month) ORDER BY customer_id;


CREATE VIEW car_by_rental AS
SELECT car_id, COUNT(1) as rental_times FROM hire GROUP BY car_id; 
       
       
